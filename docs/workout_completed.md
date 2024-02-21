### API Documentation: Mark Exercise as Completed

#### Overview
This API allows users to mark an exercise within a workout as completed in the FitCompanion app. It updates the workout status based on daily exercises completion.

#### Endpoint
- **URL**: `http://localhost:9004/fitcompanion-backend/api/workout.php`
- **Method**: `POST`

#### Request Parameters
The API accepts the following parameters sent as `POST` data:

- `workout_id` (int): The ID of the workout.
- `user_id` (string): The unique identifier of the user.
- `exercise_id` (int): The ID of the exercise.
- `coach_id` (int): The ID of the coach.
- `day_id` (int): The ID of the day of the week (1 to 7).
- `api_key` (string): The API key for authentication.

#### Request Example
```bash
curl -X POST http://localhost:9004/api/workout.php \
    -d "workout_id=15" \
    -d "user_id=HwKmZUKCXmdUpJiIYCnHbFeTj5x1" \
    -d "exercise_id=12" \
    -d "coach_id=2" \
    -d "day_id=4" \
    -d "api_key=1212t4as56aHHGASJJS323POA"
```

#### Responses

- **Success Response**:
    - **Code**: 200 OK
    - **Content Examples**:
        - When an exercise is marked as completed:
          ```json
          { "success": "Exercise marked as completed." }
          ```
        - When all exercises for the workout are completed:
          ```json
          { "success": "Workout marked as completed." }
          ```

- **Error Responses**:
    - **Invalid Request Method**:
        - **Code**: 400 Bad Request
        - **Content**:
          ```json
          { "error": "Invalid request method" }
          ```

    - **Database Connection Failed**:
        - **Code**: 500 Internal Server Error
        - **Content**:
          ```json
          { "error": "Database connection failed" }
          ```

    - **Missing or Invalid Required Fields**:
        - **Code**: 400 Bad Request
        - **Content**:
          ```json
          { "error": "Missing or invalid required fields" }
          ```

    - **Invalid API Key**:
        - **Code**: 403 Forbidden
        - **Content**:
          ```json
          { "error": "Invalid API key" }
          ```

    - **Invalid Exercise ID for the Given Day**:
        - **Code**: 404 Not Found
        - **Content**:
          ```json
          { "error": "Invalid exercise ID for the given workout on the specified day" }
          ```

#### Notes
- Ensure that the API key provided matches the one configured on the server for authentication.
- All request parameters, including the `day_id`, are mandatory and must be in the correct format.
- The API checks if the given exercise ID is valid for the specified day and workout ID.
- The API will only mark the workout as completed if all exercises assigned for the entire week are completed.
- This API should be accessed with proper authorization to protect user data.

---
