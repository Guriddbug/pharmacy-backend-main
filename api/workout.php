<?php

ini_set('display_errors', 1);
error_reporting(E_ALL);

require '../admin/config.php';
require '../admin/functions.php';

if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    echo json_encode(['error' => 'Invalid request method']);
    exit;
}

$connect = connect($database);
if (!$connect) {
    echo json_encode(['error' => 'Database connection failed']);
    exit;
}

$apiAccessKey = '1212t4as56aHHGASJJS323POA';

// Collect POST data
$apiKey     = cleardata($_POST['api_key']);
$userId     = cleardata($_POST['user_id']);
$exerciseId = (int)cleardata($_POST['exercise_id']);
$coachId    = (int)cleardata($_POST['coach_id']);
$workoutId  = (int)cleardata($_POST['workout_id']);
$dayId      = (int)cleardata($_POST['day_id']);

// Validate required fields
if (!$apiKey || !$userId || !$exerciseId || !$coachId || !$workoutId || !$dayId || $dayId < 1 || $dayId > 7) {
    echo json_encode(['error' => 'Missing or invalid required fields']);
    exit;
}

// Validate API key
if ($apiKey !== $apiAccessKey) {
    echo json_encode(['error' => 'Invalid API key']);
    exit;
}

// Determine the correct table based on day_id
$dayTable = "we_day" . $dayId;

// Check if exercise exists for the given day
$query = $connect->prepare("SELECT * FROM $dayTable WHERE exercise_id = :exercise_id AND workout_id = :workout_id");
$query->execute([':exercise_id' => $exerciseId, ':workout_id' => $workoutId]);
if ($query->rowCount() === 0) {
    echo json_encode(['error' => 'Invalid exercise ID for the given workout on the specified day']);
    exit;
}

// Check if the exercise has already been marked as completed for the given day
$checkQuery = $connect->prepare("SELECT * FROM workout_history WHERE user_id = :user_id AND workout_id = :workout_id AND exercise_id = :exercise_id AND day_of_week = :day_of_week");
$checkQuery->execute([':user_id' => $userId, ':workout_id' => $workoutId, ':exercise_id' => $exerciseId, ':day_of_week' => $dayId]);

if ($checkQuery->rowCount() > 0) {
    echo json_encode(['error' => 'Exercise already marked as completed for the given day']);
    exit;
}

// Insert completed exercise into workout_history
$insertQuery  = $connect->prepare("INSERT INTO workout_history (user_id, workout_id, exercise_id, manager_id, date_completed, day_of_week) VALUES (:user_id, :workout_id, :exercise_id, :manager_id, NOW(), :day_of_week)");
$insertResult = $insertQuery->execute([':user_id' => $userId, ':workout_id' => $workoutId, ':exercise_id' => $exerciseId, ':manager_id' => $coachId, ':day_of_week' => $dayId]);
if (!$insertResult) {
    echo json_encode(['error' => 'Failed to mark exercise as completed']);
    exit;
}

// Calculate the total number of assigned exercises for the workout across all days
$totalAssignedExercises = 0;
for ($i = 1; $i <= 7; $i++) {
    $dayTable = "we_day" . $i;
    $dayQuery = $connect->prepare("SELECT COUNT(exercise_id) as day_assigned_exercises FROM $dayTable WHERE workout_id = :workout_id");
    $dayQuery->execute([':workout_id' => $workoutId]);
    $totalAssignedExercises += (int)$dayQuery->fetch()['day_assigned_exercises'];
}
echo json_encode(['totalAssignedExercises' => $totalAssignedExercises]);

// Get the count of completed exercises from workout_history
$completedQuery = $connect->prepare("SELECT COUNT(history_id) as total_completed_exercises FROM workout_history WHERE workout_id = :workout_id AND user_id = :user_id");
$completedQuery->execute([':workout_id' => $workoutId, ':user_id' => $userId]);
$completedExercises = (int)$completedQuery->fetch()['total_completed_exercises'];

echo json_encode(['totalCompletedExercises' => $completedExercises]);

// Check if all exercises for the workout are completed
if ($completedExercises === $totalAssignedExercises) {
    // Mark the workout as completed in workouts_users table
    $updateQuery = $connect->prepare("UPDATE workouts_users SET is_completed = 1, date_completed = NOW() WHERE ws_workout = :ws_workout AND ws_user = :ws_user");
    $success     = $updateQuery->execute([':ws_workout' => $workoutId, ':ws_user' => $userId]);

    if ($success) {
        echo json_encode(['success' => 'Workout completed.']);
    } else {
        echo json_encode(['error' => 'Failed to update the workout as completed.']);
    }
} else {
    echo json_encode(['success' => 'Exercise marked as completed, but the workout is not yet fully completed.']);
}

