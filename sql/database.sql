-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2024 at 02:35 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pharmacy-database`
--

-- --------------------------------------------------------

--
-- Table structure for table `bodyparts`
--

CREATE TABLE `bodyparts` (
  `bodypart_id` int(11) NOT NULL,
  `bodypart_title` varchar(150) NOT NULL,
  `bodypart_image` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bodyparts`
--

INSERT INTO `bodyparts` (`bodypart_id`, `bodypart_title`, `bodypart_image`) VALUES
(1, 'Biceps', 'bodypart_1517098401.jpg'),
(2, 'Quads', 'bodypart_1517098193.jpg'),
(3, 'Chest', 'bodypart_1517097822.png'),
(4, 'Forearms', 'bodypart_1517097903.jpg'),
(5, 'Triceps', 'bodypart_1517097991.jpg'),
(8, 'Abs', 'bodypart_1517098045.jpg'),
(9, 'Shoulders', 'bodypart_1517098824.jpg'),
(10, 'Back', 'bodypart_1519938334.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_title` text NOT NULL,
  `category_image` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_title`, `category_image`) VALUES
(1, 'Fat Loss', 'catdiet_1516827171.jpg'),
(2, 'Muscle Gain', 'catdiet_1516827177.jpg'),
(3, 'Vegetarian', 'catdiet_1516827183.jpg'),
(4, 'Protein Shakes', 'catdiet_1518094768.jpg'),
(5, 'Sugar Free', 'catdiet_1573434399.jpg'),
(6, 'Gluten Free', 'catdiet_1573438175.jpg'),
(7, 'Snacks', 'catdiet_1573440092.jpg'),
(8, 'Salads', 'catdiet_1573440183.jpg'),
(9, 'Diabetes Appropriate', 'catdiet_1573507739.jpg'),
(10, 'Low Cholesterol', 'catdiet_1573507880.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `community_posts`
--

CREATE TABLE `community_posts` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(150) NOT NULL,
  `post_description` text NOT NULL,
  `post_tag` int(11) NOT NULL,
  `post_featured` varchar(11) NOT NULL,
  `post_date` datetime NOT NULL DEFAULT current_timestamp(),
  `post_image` varchar(50) NOT NULL,
  `post_status` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `community_posts`
--

INSERT INTO `community_posts` (`post_id`, `post_title`, `post_description`, `post_tag`, `post_featured`, `post_date`, `post_image`, `post_status`) VALUES
(11, 'New Community Post', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac eros ut nunc vestibulum fringilla. Mauris id mi vitae justo laoreet suscipit. Integer eu quam vel metus feugiat vestibulum. In hac habitasse platea dictumst.</p>\r\n<p>&nbsp;</p>\r\n<p>Curabitur ullamcorper erat quis dui bibendum, eu cursus dui dapibus. Ut tincidunt nisl id nulla pellentesque, sit amet convallis lacus fermentum. Sed quis urna auctor, interdum lacus nec, imperdiet arcu. Nunc auctor augue non ante pharetra, vel euismod ex tristique. Vivamus et ligula vitae urna volutpat iaculis. Suspendisse nec odio ut justo suscipit aliquam.</p>\r\n<p>&nbsp;</p>\r\n<p>Sed tristique orci vel velit condimentum, id pharetra eros fermentum. Maecenas facilisis odio nec elit lacinia bibendum. Cras auctor, libero non rhoncus luctus, felis elit dictum odio, nec consectetur massa tortor sit amet sapien.</p>', 8, '1', '2023-12-22 08:28:59', 'post_1703251739.jpg', '1');

-- --------------------------------------------------------

--
-- Table structure for table `diets`
--

CREATE TABLE `diets` (
  `diet_id` int(11) NOT NULL,
  `diet_title` varchar(150) NOT NULL,
  `diet_description` text NOT NULL,
  `diet_ingredients` text NOT NULL,
  `diet_category` int(11) NOT NULL,
  `diet_directions` text NOT NULL,
  `diet_calories` varchar(50) NOT NULL,
  `diet_carbs` varchar(50) NOT NULL,
  `diet_protein` varchar(50) NOT NULL,
  `diet_fat` varchar(50) NOT NULL,
  `diet_time` varchar(50) NOT NULL,
  `diet_servings` varchar(50) NOT NULL,
  `diet_featured` varchar(50) NOT NULL,
  `diet_status` varchar(50) NOT NULL,
  `diet_price` varchar(50) NOT NULL DEFAULT '-',
  `diet_image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `diets`
--

INSERT INTO `diets` (`diet_id`, `diet_title`, `diet_description`, `diet_ingredients`, `diet_category`, `diet_directions`, `diet_calories`, `diet_carbs`, `diet_protein`, `diet_fat`, `diet_time`, `diet_servings`, `diet_featured`, `diet_status`, `diet_price`, `diet_image`) VALUES
(1, 'Greek Spinach and Artichoke Dip', '<p>Lighten up this spinach-artichoke spread with Greek yogurt and pita chips. It makes for the perfect low-cal yet traditional appetizer you can serve at a party that won&#39;t have people running for the door.</p>', '<ul><li>2 tsp olive oil</li><li>2 garlic cloves, minced</li><li>10 oz frozen spinach, thawed and drained</li><li>1 (14 oz) can artichoke hearts, drained and chopped</li><li>1 cup plain nonfat Greek yogurt</li><li>1 cup reduced-fat cream cheese</li><li>&frac12; cup grated Parmesan cheese</li><li>Salt and pepper</li></ul>', 1, '<ol><li>Heat oil in a large saucepan over medium heat. Add garlic, spinach, and artichokes. Cook until tender, about 5 minutes.</li><li>Stir in yogurt and cream cheese. Add Parmesan and salt and pepper to taste. Cook, stirring occasionally, until thickened, 5 to 10 minutes. Serve warm.</li></ol>', '116', '9g', '7g', '7g', '15 Min', '8', '1', '1', '', 'recipe_1518024640.jpg'),
(2, 'Tangy Barbecue Chicken', '<p>If chicken breast is among your favorite go-tos for a tasty and reliable protein fix, you&#39;ll want to add this dish to your muscle-building arsenal. This version gets its kick from tangy apple cider vinegar and spicy mustard paired with just a little bit of brown sugar and ketchup.</p>', '<ul><li>2/3 cup apple cider vinegar</li><li>1/2 cup yellow mustard</li><li>1 tsp onion powder</li><li>1 tsp garlic powder</li><li>2 pinches salt</li><li>1/8 cup brown sugar</li><li>1/2 cup low-sodium ketchup</li><li>4 chicken breasts</li></ul>', 1, '<ol><li>Preheat grill. Place all ingredients except chicken in a sauce pan. Heat over medium flame, cooking until contents are reduced by 50%.</li><li>Spread barbecue sauce on chicken breasts and place on grill. (Sauce can also be cooled for later use.)</li><li>Grill breasts 4-5 minutes on each side, or until no longer pink inside.</li></ol>', '308', '12g', '52g', '2g', '60 Min', '4', '1', '1', '', 'recipe_1518028133.jpg'),
(3, 'Chicken, Asparagus, and Brie Omelet', '<p>Cooking your chicken in bulk is the smart way to prep your meals for the week.</p><p>However, you&rsquo;ll inevitably be left with extra portions taking up space in your fridge. And then what are you going to do? Wait a few days, until it&rsquo;s dry and rubbery, before using it to make a batch of uninspired, slapdash snacks?</p><p>You&rsquo;re better than that. Instead, use it to whip up three days&rsquo; worth of mouth-watering, muscle-making meals that are healthy to boot.</p><p>Bonus: The soup recipe will have even four-day-old chicken tasting as moist and succulent as the day you cooked it up.</p>', '<ul><li>2 large eggs</li><li>4 egg whites</li><li>1/8 tsp salt</li><li>1/8 tsp ground black pepper</li><li>Cooking spray</li><li>1 1/2 oz leftover skinless chicken, chopped</li><li>6 cooked asparagus spears, cut into 1/4-inch pieces</li><li>1 1/2 oz brie</li><li>1/4 cup leftover cranberry sauce (optional)</li></ul>', 2, '<ol><li>In a small bowl, whisk eggs, egg whites, salt, and black pepper.</li><li>Coat large skillet with cooking spray and heat over medium heat. Pour in egg mixture.</li><li>When the edges begin to set, push the cooked portion toward the center with a spatula. Tilt the skillet so any uncooked egg reaches the hot pan. When eggs set, add chicken and asparagus to one side. Cook for 1 minute. Add brie and cook 1 to 2 minutes, until the cheese melts.</li><li>Fold omelet in half and serve with cranberry sauce, if desired.</li></ol>', '263', '25g', '15g', '12g', '30 Min', '2', '0', '1', '', 'recipe_1519697004.jpg'),
(4, 'Spicy Chicken and Root Vegetable Soup', '<p>Cooking your chicken in bulk is the smart way to prep your meals for the week.</p><p>However, you&rsquo;ll inevitably be left with extra portions taking up space in your fridge. And then what are you going to do? Wait a few days, until it&rsquo;s dry and rubbery, before using it to make a batch of uninspired, slapdash snacks?</p><p>You&rsquo;re better than that. Instead, use it to whip up three days&rsquo; worth of mouth-watering, muscle-making meals that are healthy to boot.</p><p>Bonus: The soup recipe will have even four-day-old chicken tasting as moist and succulent as the day you cooked it up.</p>', '<ul><li>1 cup packed baby spinach</li><li>1 tbsp olive oil</li><li>1 medium onion, chopped</li><li>1 medium carrot, chopped</li><li>1 celery rib, chopped</li><li>1 medium turnip, chopped</li><li>1 (15 oz) can brown lentils, drained</li><li>6 oz leftover skinless chicken, shredded</li><li>6 cups (48 fluid oz) low-sodium chicken stock</li><li>1 tbsp mirin (Japanese sweet rice wine found in the Asian-foods aisle)</li><li>2 bay leaves</li><li>1/8 tsp cayenne</li></ul>', 2, '<ol><li>Stack spinach leaves, roll, then slice into ribbons.</li><li>Heat oil in a large pot over medium heat. When simmering, add onion, carrot, celery, and turnip. Cook until onion is translucent, about 4 minutes. Add lentils, chicken, stock, mirin, and bay leaves; stir to combine. Turn heat up to high and bring to a boil, then reduce heat, cover, and simmer until lentils are tender, about 20 minutes.</li><li>Remove bay leaves. Stir in cayenne and spinach. Ladle into bowls.</li></ol>', '273', '32g', '25g', '8g', '60 Min', '4', '1', '1', '', 'recipe_1519697891.jpg'),
(5, 'Chicken-walnut Salad With Pomegranate Seeds', '<p>Cooking your chicken in bulk is the smart way to prep your meals for the week.</p><p>However, you&rsquo;ll inevitably be left with extra portions taking up space in your fridge. And then what are you going to do? Wait a few days, until it&rsquo;s dry and rubbery, before using it to make a batch of uninspired, slapdash snacks?</p><p>You&rsquo;re better than that. Instead, use it to whip up three days&rsquo; worth of mouth-watering, muscle-making meals that are healthy to boot.</p><p>Bonus: The soup recipe will have even four-day-old chicken tasting as moist and succulent as the day you cooked it up.</p>', '<ul><li>8 oz leftover skinless chicken, chopped</li><li>1/2 medium onion, finely chopped</li><li>1 celery rib, finely chopped</li><li>1/4 cup (1 oz) finely chopped walnuts</li><li>2 tbsp pomegranate arils/seeds (or dried cranberries)</li><li>2 tbsp light mayonnaise</li><li>2 tbsp nonfat plain Greek yogurt</li><li>1 tbsp Dijon mustard</li><li>1 tsp fresh lemon juice</li><li>1/4 tsp salt</li><li>1/8 tsp ground black pepper</li><li>4 (8-inch) low-carb, whole-wheat flour tortillas</li></ul>', 1, '<ul><li>In a medium bowl, combine chicken, onion, celery, and walnuts with pomegranate arils.</li><li>In a small bowl, whisk together mayo, yogurt, mustard, lemon juice, salt, and black pepper until well-combined. Add to chicken. Stir to coat evenly.</li><li>Add chicken salad to tortillas. Fold the sides in; bring bottom up; roll to close.</li></ul>', '162', '25g', '17g', '6g', '40 Min', '4', '1', '1', '', 'recipe_1519698091.jpg'),
(6, 'Peanut-Banana Pancakes', '<p>Serve up this tasty, muscle-building breakfast that&#39;s loaded with protein.</p>', '<ul><li>&frac12; cup whole wheat or oat flour</li><li>&frac12; cup peanut flour</li><li>1 tsp baking powder</li><li>&frac12; tsp cinnamon</li><li>1 large egg, beaten</li><li>1 ripe banana, mashed</li><li>&frac12; cup low-fat cow&#39;s or goat&#39;s milk</li><li>⅓ cup walnuts, chopped</li><li>1 tbsp unsalted butter</li></ul>', 1, '<ol><li>In a large bowl, mix whole wheat flour, peanut flour, baking powder, and cinnamon. In a separate bowl, stir together egg, banana, and milk.</li><li>Add wet ingredients to dry ingredients and mix until moist.</li><li>Stir in additional milk if needed.</li><li>Gently stir walnuts into batter.</li><li>Heat a large skillet over medium.</li><li>Add butter and allow to melt.</li><li>Using a measuring cup, drop batter onto skillet and cook for approximately 3 minutes per side, or until golden.</li><li>Repeat with remaining batter.</li></ol>', '456', '18g', '25g', '46g', '15 Min', '3', '0', '1', '', 'recipe_1519698889.jpg'),
(7, 'Post-workout Shake: Cherry Vanilla', '<p>This delicious, nutrient-packed blend will leave you wanting more.</p>', '<ul><li>1&frac12; tsp all-natural almond butter</li><li>&frac34; cup coconut milk</li><li>&frac12; cup frozen cranberries</li><li>1 cup dark, pitted cherries</li><li>&frac12; scoop vanilla whey protein powder</li><li>&frac12; tbsp chia seeds</li><li>1 tsp pure agave nectar</li><li>1 cup ice</li></ul>', 4, '<ol><li>Add all of the ingredients into a blender and blend on medium-high for 1 minute or until smooth.</li></ol>', '350', '33g', '25g', '15g', '1 Min', '1', '0', '1', '', 'recipe_1519974269.jpg'),
(8, 'Post-workout Shake: Pumpkin Pie', '<p>Spruce up your boring vanilla, or chocolate post-workout protein shake with this pumpkin pie milkshake.</p>', '<ul><li>&frac14; cup unsweetened almond milk</li><li>&frac12; cup pumpkin</li><li>&frac12; cup organic yogurt</li><li>&frac12; cup vanilla whey protein powder</li><li>1 tsp pure organic honey</li><li>1 tsp graham cracker crumbs</li><li>&frac34; tsp ground cinnamon</li><li>&frac12; tsp ground nutmeg</li><li>1 tsp sugar-free pumpkin instant Jell-O Pudding Mix</li></ul>', 4, '<ol><li>Add all of the ingredients into a blender and blend on medium-high for 1 minute or until smooth.</li></ol>', '200', '18g', '16g', '5g', '1 Min', '1', '1', '1', '', 'recipe_1519974429.jpg'),
(9, 'Beet Smoothie for Optimal Recovery', '<p>You can&#39;t go wrong with this nutrient-packed healthy beverage.</p>', '<ul><li>1 cooked beet, peeled and quartered</li><li>1 cup frozen blueberries</li><li>1 small frozen banana</li><li>1 cup unsweetened almond milk or other milk of choice</li><li>1 cup coconut water</li><li>1 inch knob fresh ginger, peeled</li><li>1 tbsp almond butter</li></ul>', 4, '<ol><li>Combine all ingredients in blender; blend until smooth.</li></ol>', '197', '15g', '17g', '9g', '1 Min', '1', '0', '1', '', 'recipe_1519974784.jpg'),
(10, 'The Santina Spritz', '<p>A prosecco and Aperol spritz screams summer, cool down with this low-cal version.</p>', '<ul><li>3 parts Prosecco</li><li>2 parts frozen Aperol</li><li>1 part club soda</li></ul>', 4, '<ol><li>Scoop out frozen Aperol, and place into a pitcher. Pour one bottle of prosecco over the frozen Aperol, and top with soda water. Pour into glasses, and garnish with an orange slice and mint sprig.</li></ol>', '180', '22g', '14g', '7g', '1 Min', '1', '0', '1', '', 'recipe_1519975136.jpg'),
(11, 'Super-Easy Barbacoa &amp; Jicama Tacos', '<p>Prep these low-carb tacos up to five days in advance for hassle-free eating.</p>', '<ul><li>1 tsp fine sea salt</li><li>&frac12; tsp ground black pepper</li><li>1 tbsp ground cumin</li><li>1 tbsp chipotle chili powder</li><li>1 tbsp dried Mexican oregano leaves</li><li>&frac12; tsp ground cloves</li><li>3 lbs chuck roast, cut into 8 large chunks</li><li>2 tbsp salted butter</li><li>4 garlic cloves, minced</li></ul>', 2, '<ol><li>In a small bowl, mix together the salt, pepper, cumin, chili powder, oregano, and cloves. Dust the pieces of chuck roast with the spice mixture, making sure to coat all sides well.</li><li>Melt the butter in a large frying or saut&eacute; pan over high heat. Add the beef in batches so that the pan isn&rsquo;t overcrowded. Sear the beef for about 3 minutes per side, or until it develops a nice char. Transfer the cooked beef to a slow cooker and repeat with the remaining meat.</li><li>Add the garlic and bay leaves to the beef in the slow cooker. Pour in the vinegar and lime juice. Cover, and cook for 4 hours on high, or until the beef falls apart when tested with a fork.</li><li>Remove and discard the bay leaves. Then, working in the slow cooker, use two forks to shred the beef. Stir it in the accumulated juices.</li><li>To make the jicama tortillas, place the jicama discs in a steamer basket over boiling water and steam for 3 minutes, or place them in a microwave-safe bowl with 2 tbsp water, cover, and microwave on high for 3 minutes. They&rsquo;re finished when they become flexible. Let cool, then drain over paper towels. Top the jicama with the shredded beef and garnish with lime wedges, avocado, and cilantro.</li></ol>', '456', '40g', '16g', '17g', '40 Min', '6', '1', '1', '', 'recipe_1519975733.jpg'),
(12, 'A nutritious, muscle-building breakfast', '<p>Is breakfast really the most important meal of the day? Some claim breakfast helps jump-start your metabolism, improves cognitive performance, and aids in weight loss; whereas others suggest that it has little effect on weight or may even hinder weight loss. Regardless, many of us aren&rsquo;t ready to ditch our morning meal, and for good reason.</p>', '<ul><li>1 chicken breast (7-9 oz.)</li><li>1 yam</li><li>1 cup peas, corn and carrots</li></ul>', 2, '<ol><li>Add a tall glass of low-fat milk and saute the chicken in extra-virgin olive oil for additional protein and essential fats that help growth.<br />&nbsp;</li></ol>', '603', '50g', '25g', '6g', '30 Min', '4', '0', '1', '', 'recipe_1519976213.jpg'),
(13, 'Supergreen Candy Salad', '<p>Quinoa, the king of carbs, is a great alternative to typical grains like wheat, oats, and barley. What sets quinoa apart is its amino acid profile, which yields a whopping 24g of complete protein per cup. Quinoa also contains high levels of heart-healthy essential fatty acids, such as ALA and oleic acid.</p>', '<ul><li>2&frac14; oz baby leaf spinach</li><li>2 tsp mint</li><li>2 tsp fresh cilantro</li><li>1 large scallion</li><li>&frac14; red chili</li><li>1 tbsp extra-virgin olive oil</li><li>For the salad:</li><li>&frac34; cup quinoa, uncooked</li><li>3 oz chicken breast</li></ul>', 3, '<ol><li>Place all dressing ingredients in a blender and puree.</li><li>Cook quinoa according to package directions, then drain and cool.</li><li>Slice chicken breast along its length to get a butterflied joint. Season with salt and pepper and cook in an oiled pan over medium heat for 4 minutes on each side.</li><li>Remove from heat and shred chicken.</li><li>In a large bowl, mix dressing with cooked quinoa. Toss vegetables and fruits together and mix; then crumble in feta.&nbsp;</li><li>To serve, divide among four plates and top with shredded chicken.&nbsp;</li></ol>', '545', '35g', '25g', '79g', '15 Min', '5', '0', '1', '', 'recipe_1519976534.jpg'),
(14, 'Spring Pea Coconut Curry', '<p>Power up, and pack on protein with this nutrient-rich meal.</p>', '<ul><li>1 13.5-oz can coconut milk</li><li>&frac12; cup chicken stock</li><li>2 tsp green curry paste</li><li>1 pint of fresh spring peas or &frac12; bag frozen</li><li>1 Tbsp sugar (brown, cane, or coconut)</li><li>2 Tbsp fish sauce</li><li>&frac12; lb boneless, skinless chicken breast, cubed</li></ul>', 3, '<ol><li>Place coconut milk and chicken stock in a pot, and cook over medium-high heat for about 3 minutes. Whisk in curry paste and add half of the peas, along with sugar and fish sauce; cook another 3 minutes.</li><li>Pour mixture into a blender (or use a handheld blender), and blend until smooth. Return to pot and heat again over medium-high. (Don&rsquo;t boil.)</li><li>Add chicken and remaining peas; stir. Cook 5 minutes or until chicken is just cooked through. Add lime juice, and stir.</li><li>Divide between two bowls. Top with pea shoots and cilantro, and garnish with lime.</li></ol>', '354', '36g', '26g', '65g', '30 Min', '4', '0', '1', '', 'recipe_1519976739.jpg'),
(15, 'Slow-cooker Stuffed Peppers', '<p>These stuffed peppers are loaded with protein for maximum muscle-building potential.</p>', '<ul>\r\n<li>1 cup quinoa</li>\r\n<li>2 cups water</li>\r\n<li>1 onion, chopped</li>\r\n<li>5 tsp chili powder</li>\r\n<li>2 tsp chipotle liquid from canned chipotle peppers</li>\r\n<li>1 cup canned black beans</li>\r\n</ul>', 3, '<ol>\r\n<li>To start, cook the quinoa according to package instructions.</li>\r\n<li>Saut&eacute; the onion then add the ground beef to pan, and cook until brown.</li>\r\n<li>Add the chili powder and chipotle liquid to the pan, then add in the black beans, tomato paste, and three-fourths cup of the crushed tomatoes. Once the sauce thickens, stir in the quinoa.</li>\r\n</ol>', '435', '46g', '23g', '18g', '15 Min', '3', '0', '1', 'free', 'recipe_1519976893.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `diets_users`
--

CREATE TABLE `diets_users` (
  `du_diet` int(11) DEFAULT NULL,
  `du_user` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `diets_users`
--

INSERT INTO `diets_users` (`du_diet`, `du_user`) VALUES
(15, 'PkzC4Y0PoyTn3CGHFgI9wpkR0WO2'),
(15, 'PkzC4Y0PoyTn3CGHFgI9wpkR0WO2'),
(15, 'PkzC4Y0PoyTn3CGHFgI9wpkR0WO2'),
(15, 'PkzC4Y0PoyTn3CGHFgI9wpkR0WO2'),
(15, 'PkzC4Y0PoyTn3CGHFgI9wpkR0WO2'),
(15, 'PkzC4Y0PoyTn3CGHFgI9wpkR0WO2');

-- --------------------------------------------------------

--
-- Table structure for table `equipments`
--

CREATE TABLE `equipments` (
  `equipment_id` int(11) NOT NULL,
  `equipment_title` varchar(150) NOT NULL,
  `equipment_image` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `equipments`
--

INSERT INTO `equipments` (`equipment_id`, `equipment_title`, `equipment_image`) VALUES
(1, 'Dumbbells', 'equipment_1572739480.png'),
(2, 'Barbell', 'equipment_1572739504.png'),
(3, 'Kettlebells', 'equipment_1572739428.png'),
(4, 'No Equipment', 'equipment_1572739444.png'),
(5, 'Pull Up Bar', 'equipment_1572740143.png'),
(6, 'Medicine Ball', 'equipment_1572740201.png'),
(7, 'Stationary Bike', 'equipment_1572739262.png'),
(8, 'Jumping Rope', 'equipment_1572742716.png');

-- --------------------------------------------------------

--
-- Table structure for table `exercises`
--

CREATE TABLE `exercises` (
  `exercise_id` int(11) NOT NULL,
  `exercise_title` varchar(150) NOT NULL,
  `exercise_reps` varchar(50) NOT NULL,
  `exercise_sets` varchar(50) NOT NULL,
  `exercise_rest` varchar(50) NOT NULL,
  `exercise_equipment` int(11) NOT NULL,
  `exercise_level` int(11) NOT NULL,
  `exercise_image` varchar(150) NOT NULL,
  `exercise_video` varchar(250) NOT NULL,
  `exercise_tips` text NOT NULL,
  `exercise_instructions` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `exercises`
--

INSERT INTO `exercises` (`exercise_id`, `exercise_title`, `exercise_reps`, `exercise_sets`, `exercise_rest`, `exercise_equipment`, `exercise_level`, `exercise_image`, `exercise_video`, `exercise_tips`, `exercise_instructions`) VALUES
(1, 'Renegade Row', '12', '4', '30 Sec', 1, 2, 'exercise_1519883084.jpg', 'https://yourvideolink.com/', '<ul><li>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</li><li>Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</li><li>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</li></ul>', '<ol><li>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</li><li>Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</li><li>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</li></ol>'),
(2, 'Elbow Plank Pike Jacks', '12', '3', '1 Min', 4, 2, 'exercise_1519883483.jpg', 'https://yourvideolink.com/', '<ul><li>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</li><li>Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</li><li>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</li></ul>', '<ol><li>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</li><li>Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</li><li>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</li></ol>'),
(3, 'Full Plank Passe Twist', '12', '4', '30 Sec', 4, 1, 'exercise_1519883704.jpg', 'https://yourvideolink.com/', '<ul><li>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</li><li>Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</li><li>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</li></ul>', '<ol><li>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</li><li>Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</li><li>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</li></ol>'),
(4, 'Dumbbell Side Lunge', '10', '3', '1 Min', 1, 1, 'exercise_1519883956.jpg', 'https://yourvideolink.com/', '<ul><li>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</li><li>Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</li><li>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</li></ul>', '<ol><li>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</li><li>Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</li><li>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</li></ol>'),
(5, 'Sumo Squat Swing', '10', '3', '30 Sec', 3, 1, 'exercise_1519884158.jpg', 'https://yourvideolink.com/', '<ul><li>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</li><li>Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</li><li>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</li></ul>', '<ol><li>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</li><li>Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</li><li>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</li></ol>'),
(6, 'Barbell Hang Pull', '10', '4', '1 Min', 5, 3, 'exercise_1519884329.jpg', 'https://firebasestorage.googleapis.com/v0/b/tienda-reada-fitness.appspot.com/o/videos%2F6.mp4?alt=media&token=3e7494e2-f94c-45db-8b06-2977516cd93f', '<ul><li>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</li><li>Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</li><li>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</li></ul>', '<ol><li>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</li><li>Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</li><li>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</li></ol>'),
(7, 'Single-arm Neutral-grip Dumbbell Row', '10', '3', '30 Sec', 1, 1, 'exercise_1519884492.jpg', 'https://yourvideolink.com/', '<ul><li>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</li><li>Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</li><li>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</li></ul>', '<ol><li>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</li><li>Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</li><li>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</li></ol>'),
(9, 'Feet-elevated Side-to-Side Pushup', '10', '3', '1 Min', 4, 2, 'exercise_1519884889.jpg', 'https://yourvideolink.com/', '<ul><li>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</li><li>Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</li><li>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</li></ul>', '<ol><li>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</li><li>Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</li><li>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</li></ol>'),
(10, 'Plank with Arm Raise', '12', '3', '30 Sec', 4, 2, 'exercise_1519938568.jpg', 'https://yourvideolink.com/', '<ul><li>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</li><li>Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</li><li>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</li></ul>', '<ol><li>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</li><li>Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</li><li>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</li></ol>'),
(11, 'Partial Single-leg Squat', '15', '3', '45 Sec', 4, 2, 'exercise_1519938967.jpg', 'https://yourvideolink.com/', '<ul><li>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</li><li>Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</li><li>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</li></ul>', '<ol><li>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</li><li>Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</li><li>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</li></ol>'),
(12, 'EZ-Bar Pullover', '10', '4', '45 Sec', 2, 1, 'exercise_1519939226.jpg', 'https://yourvideolink.com/', '<ul><li>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</li><li>Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</li><li>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</li></ul>', '<ol><li>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</li><li>Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</li><li>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</li></ol>'),
(13, 'EZ-Bar Overhead Triceps', '12', '3', '1 Min', 2, 1, 'exercise_1519939489.jpg', 'https://yourvideolink.com/', '<ul><li>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</li><li>Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</li><li>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</li></ul>', '<ol><li>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</li><li>Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</li><li>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</li></ol>'),
(14, 'Cross Punch Roll-up', '10', '4', '1 Min', 4, 1, 'exercise_1519940111.jpg', 'https://yourvideolink.com/', '<ul><li>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</li><li>Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</li><li>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</li></ul>', '<ol><li>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</li><li>Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</li><li>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</li></ol>'),
(15, 'Single-arm Medicine Ball Pushup', '8', '3', '45 Sec', 6, 4, 'exercise_1519940316.jpg', 'https://yourvideolink.com/', '<ul><li>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</li><li>Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</li><li>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</li></ul>', '<ol><li>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</li><li>Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</li><li>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</li></ol>'),
(16, 'Glutes Stretch', '12', '3', '1 Min', 4, 1, 'exercise_1519940754.jpg', 'https://yourvideolink.com/', '<ul><li>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</li><li>Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</li><li>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</li></ul>', '<ol><li>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</li><li>Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</li><li>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</li></ol>'),
(17, '90-degree Static Hold', '12', '3', '45 Sec', 4, 1, 'exercise_1519940878.jpg', 'https://yourvideolink.com/', '<ul><li>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</li><li>Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</li><li>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</li></ul>', '<ol><li>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</li><li>Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</li><li>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</li></ol>'),
(18, 'Barbell High Pull', '10', '4', '1 Min', 2, 3, 'exercise_1519941525.jpg', 'https://yourvideolink.com/', '<ul><li>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</li><li>Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</li><li>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</li></ul>', '<ol><li>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</li><li>Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</li><li>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</li></ol>'),
(19, 'Reclining Triceps Press', '15', '4', '45 Sec', 4, 1, 'exercise_1519941887.jpg', 'https://yourvideolink.com/', '<ul><li>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</li><li>Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</li><li>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</li></ul>', '<ol><li>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</li><li>Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</li><li>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</li></ol>');

-- --------------------------------------------------------

--
-- Table structure for table `exercises_bodyparts`
--

CREATE TABLE `exercises_bodyparts` (
  `bodypart_id` int(11) NOT NULL,
  `exercise_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `exercises_bodyparts`
--

INSERT INTO `exercises_bodyparts` (`bodypart_id`, `exercise_id`) VALUES
(9, 3),
(8, 3),
(2, 4),
(2, 5),
(8, 6),
(2, 6),
(1, 6),
(1, 7),
(10, 10),
(9, 10),
(8, 10),
(2, 11),
(9, 13),
(5, 13),
(3, 12),
(5, 12),
(9, 12),
(10, 12),
(10, 14),
(9, 14),
(8, 14),
(1, 15),
(5, 15),
(9, 15),
(8, 16),
(2, 16),
(8, 17),
(10, 18),
(9, 18),
(8, 18),
(2, 18),
(1, 18),
(9, 19),
(8, 19),
(5, 19),
(8, 2),
(4, 2),
(3, 9),
(5, 9),
(8, 9),
(9, 9),
(4, 9),
(4, 1),
(5, 1),
(8, 1),
(9, 1),
(9, 3),
(8, 3),
(2, 4),
(2, 5),
(8, 6),
(2, 6),
(1, 6),
(1, 7),
(10, 10),
(9, 10),
(8, 10),
(2, 11),
(9, 13),
(5, 13),
(3, 12),
(5, 12),
(9, 12),
(10, 12),
(10, 14),
(9, 14),
(8, 14),
(1, 15),
(5, 15),
(9, 15),
(8, 16),
(2, 16),
(8, 17),
(10, 18),
(9, 18),
(8, 18),
(2, 18),
(1, 18),
(9, 19),
(8, 19),
(5, 19),
(8, 2),
(4, 2),
(3, 9),
(5, 9),
(8, 9),
(9, 9),
(4, 9),
(4, 1),
(5, 1),
(8, 1),
(9, 1),
(9, 3),
(8, 3),
(2, 4),
(2, 5),
(8, 6),
(2, 6),
(1, 6),
(1, 7),
(10, 10),
(9, 10),
(8, 10),
(2, 11),
(9, 13),
(5, 13),
(3, 12),
(5, 12),
(9, 12),
(10, 12),
(10, 14),
(9, 14),
(8, 14),
(1, 15),
(5, 15),
(9, 15),
(8, 16),
(2, 16),
(8, 17),
(10, 18),
(9, 18),
(8, 18),
(2, 18),
(1, 18),
(9, 19),
(8, 19),
(5, 19),
(8, 2),
(4, 2),
(3, 9),
(5, 9),
(8, 9),
(9, 9),
(4, 9),
(4, 1),
(5, 1),
(8, 1),
(9, 1),
(9, 3),
(8, 3),
(2, 4),
(2, 5),
(8, 6),
(2, 6),
(1, 6),
(1, 7),
(10, 10),
(9, 10),
(8, 10),
(2, 11),
(9, 13),
(5, 13),
(3, 12),
(5, 12),
(9, 12),
(10, 12),
(10, 14),
(9, 14),
(8, 14),
(1, 15),
(5, 15),
(9, 15),
(8, 16),
(2, 16),
(8, 17),
(10, 18),
(9, 18),
(8, 18),
(2, 18),
(1, 18),
(9, 19),
(8, 19),
(5, 19),
(8, 2),
(4, 2),
(3, 9),
(5, 9),
(8, 9),
(9, 9),
(4, 9),
(4, 1),
(5, 1),
(8, 1),
(9, 1),
(9, 3),
(8, 3),
(2, 4),
(2, 5),
(8, 6),
(2, 6),
(1, 6),
(1, 7),
(10, 10),
(9, 10),
(8, 10),
(2, 11),
(9, 13),
(5, 13),
(3, 12),
(5, 12),
(9, 12),
(10, 12),
(10, 14),
(9, 14),
(8, 14),
(1, 15),
(5, 15),
(9, 15),
(8, 16),
(2, 16),
(8, 17),
(10, 18),
(9, 18),
(8, 18),
(2, 18),
(1, 18),
(9, 19),
(8, 19),
(5, 19),
(8, 2),
(4, 2),
(3, 9),
(5, 9),
(8, 9),
(9, 9),
(4, 9),
(4, 1),
(5, 1),
(8, 1),
(9, 1),
(9, 3),
(8, 3),
(2, 4),
(2, 5),
(8, 6),
(2, 6),
(1, 6),
(1, 7),
(10, 10),
(9, 10),
(8, 10),
(2, 11),
(9, 13),
(5, 13),
(3, 12),
(5, 12),
(9, 12),
(10, 12),
(10, 14),
(9, 14),
(8, 14),
(1, 15),
(5, 15),
(9, 15),
(8, 16),
(2, 16),
(8, 17),
(10, 18),
(9, 18),
(8, 18),
(2, 18),
(1, 18),
(9, 19),
(8, 19),
(5, 19),
(8, 2),
(4, 2),
(3, 9),
(5, 9),
(8, 9),
(9, 9),
(4, 9),
(4, 1),
(5, 1),
(8, 1),
(9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `fcm_tokens`
--

CREATE TABLE `fcm_tokens` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `device_id` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `fcm_tokens`
--

INSERT INTO `fcm_tokens` (`id`, `user_id`, `token`, `device_id`) VALUES
(1, 'VVfmHIpsQUPO2hF0v7MVWL5dd0M2', 'dUHM275rRAmj7Wxivr2u6f:APA91bGmO9AKgxwRmg6z0xBo9s6dtA-JMkUw6Ou4AKPuKeGpjFEq4WVfsp0m9o4ZSzmJPamfRwJIyXHmNZOMP3rotrOjpBRa2F45iRTwFIGeL2UbvS9YIjmvpUzgAuWzcWfLEhCa0HfL', ''),
(3, 'PfSEl6dz2YPMV2xvPPazVbq9GtY2', 'null', ''),
(4, 'VVfmHIpsQUPO2hF0v7MVWL5dd0M2', 'edhiuP_NSyig8Gwq6MkK2T:APA91bG43aGwJhnskDQB5qUPdg6WMoe5VU4OX1plYkDw8K0aN8R0MZUU2YaMEr-soPZzmoexVkbDK8sGV7OdUXcSCPXfHkVNkb7nBV1P7U_-KZbLF34J7SDhrA9RqvMQu7b9idIW4BBd', NULL),
(5, 'PfSEl6dz2YPMV2xvPPazVbq9GtY2', 'fLoQtAEdROKPFhd00O7cLr:APA91bEIAwnaLlzC1-rXYXNscuZiEExg9FaAvPqQqdM3DjG8muhuRWhZgz9gP90CF6xefRKFmkLKuvsevcWv7uVZrHNEwgSPMNYeNteZeNNpIkBpH6gvTYQOIEEKAbJogzQQ9D6ZhVmN', NULL),
(6, 'PfSEl6dz2YPMV2xvPPazVbq9GtY2', 'fLoQtAEdROKPFhd00O7cLr:APA91bEIAwnaLlzC1-rXYXNscuZiEExg9FaAvPqQqdM3DjG8muhuRWhZgz9gP90CF6xefRKFmkLKuvsevcWv7uVZrHNEwgSPMNYeNteZeNNpIkBpH6gvTYQOIEEKAbJogzQQ9D6ZhVmN', NULL),
(7, 'PfSEl6dz2YPMV2xvPPazVbq9GtY2', 'fLoQtAEdROKPFhd00O7cLr:APA91bEIAwnaLlzC1-rXYXNscuZiEExg9FaAvPqQqdM3DjG8muhuRWhZgz9gP90CF6xefRKFmkLKuvsevcWv7uVZrHNEwgSPMNYeNteZeNNpIkBpH6gvTYQOIEEKAbJogzQQ9D6ZhVmN', NULL),
(8, 'PfSEl6dz2YPMV2xvPPazVbq9GtY2', 'fLoQtAEdROKPFhd00O7cLr:APA91bEIAwnaLlzC1-rXYXNscuZiEExg9FaAvPqQqdM3DjG8muhuRWhZgz9gP90CF6xefRKFmkLKuvsevcWv7uVZrHNEwgSPMNYeNteZeNNpIkBpH6gvTYQOIEEKAbJogzQQ9D6ZhVmN', NULL),
(9, 'VVfmHIpsQUPO2hF0v7MVWL5dd0M2', 'edhiuP_NSyig8Gwq6MkK2T:APA91bHFRQ2fMeWCCpKhoIEufM8BXG1W26bbUV5LiaoaZJ4XjrRy8rf3ezHHD1yJqxeLhtqJ13j0m0GoSo8LRpgGhrZ3kQPthYRT_R3Sal9Cj2f73Cop9KzQvMDwSszBfjdP4DZlwUif', NULL),
(10, 'VVfmHIpsQUPO2hF0v7MVWL5dd0M2', 'edhiuP_NSyig8Gwq6MkK2T:APA91bHFRQ2fMeWCCpKhoIEufM8BXG1W26bbUV5LiaoaZJ4XjrRy8rf3ezHHD1yJqxeLhtqJ13j0m0GoSo8LRpgGhrZ3kQPthYRT_R3Sal9Cj2f73Cop9KzQvMDwSszBfjdP4DZlwUif', NULL),
(11, 'VVfmHIpsQUPO2hF0v7MVWL5dd0M2', 'edhiuP_NSyig8Gwq6MkK2T:APA91bHFRQ2fMeWCCpKhoIEufM8BXG1W26bbUV5LiaoaZJ4XjrRy8rf3ezHHD1yJqxeLhtqJ13j0m0GoSo8LRpgGhrZ3kQPthYRT_R3Sal9Cj2f73Cop9KzQvMDwSszBfjdP4DZlwUif', NULL),
(12, 'VVfmHIpsQUPO2hF0v7MVWL5dd0M2', 'edhiuP_NSyig8Gwq6MkK2T:APA91bHFRQ2fMeWCCpKhoIEufM8BXG1W26bbUV5LiaoaZJ4XjrRy8rf3ezHHD1yJqxeLhtqJ13j0m0GoSo8LRpgGhrZ3kQPthYRT_R3Sal9Cj2f73Cop9KzQvMDwSszBfjdP4DZlwUif', NULL),
(13, 'VVfmHIpsQUPO2hF0v7MVWL5dd0M2', 'edhiuP_NSyig8Gwq6MkK2T:APA91bHFRQ2fMeWCCpKhoIEufM8BXG1W26bbUV5LiaoaZJ4XjrRy8rf3ezHHD1yJqxeLhtqJ13j0m0GoSo8LRpgGhrZ3kQPthYRT_R3Sal9Cj2f73Cop9KzQvMDwSszBfjdP4DZlwUif', NULL),
(14, 'VVfmHIpsQUPO2hF0v7MVWL5dd0M2', 'edhiuP_NSyig8Gwq6MkK2T:APA91bHFRQ2fMeWCCpKhoIEufM8BXG1W26bbUV5LiaoaZJ4XjrRy8rf3ezHHD1yJqxeLhtqJ13j0m0GoSo8LRpgGhrZ3kQPthYRT_R3Sal9Cj2f73Cop9KzQvMDwSszBfjdP4DZlwUif', NULL),
(15, 'PfSEl6dz2YPMV2xvPPazVbq9GtY2', 'fLoQtAEdROKPFhd00O7cLr:APA91bEIAwnaLlzC1-rXYXNscuZiEExg9FaAvPqQqdM3DjG8muhuRWhZgz9gP90CF6xefRKFmkLKuvsevcWv7uVZrHNEwgSPMNYeNteZeNNpIkBpH6gvTYQOIEEKAbJogzQQ9D6ZhVmN', NULL),
(16, 'PfSEl6dz2YPMV2xvPPazVbq9GtY2', 'fLoQtAEdROKPFhd00O7cLr:APA91bEIAwnaLlzC1-rXYXNscuZiEExg9FaAvPqQqdM3DjG8muhuRWhZgz9gP90CF6xefRKFmkLKuvsevcWv7uVZrHNEwgSPMNYeNteZeNNpIkBpH6gvTYQOIEEKAbJogzQQ9D6ZhVmN', NULL),
(17, 'PfSEl6dz2YPMV2xvPPazVbq9GtY2', 'fLoQtAEdROKPFhd00O7cLr:APA91bEIAwnaLlzC1-rXYXNscuZiEExg9FaAvPqQqdM3DjG8muhuRWhZgz9gP90CF6xefRKFmkLKuvsevcWv7uVZrHNEwgSPMNYeNteZeNNpIkBpH6gvTYQOIEEKAbJogzQQ9D6ZhVmN', NULL),
(18, 'PfSEl6dz2YPMV2xvPPazVbq9GtY2', 'fLoQtAEdROKPFhd00O7cLr:APA91bEIAwnaLlzC1-rXYXNscuZiEExg9FaAvPqQqdM3DjG8muhuRWhZgz9gP90CF6xefRKFmkLKuvsevcWv7uVZrHNEwgSPMNYeNteZeNNpIkBpH6gvTYQOIEEKAbJogzQQ9D6ZhVmN', NULL),
(19, 'PfSEl6dz2YPMV2xvPPazVbq9GtY2', 'fLoQtAEdROKPFhd00O7cLr:APA91bEIAwnaLlzC1-rXYXNscuZiEExg9FaAvPqQqdM3DjG8muhuRWhZgz9gP90CF6xefRKFmkLKuvsevcWv7uVZrHNEwgSPMNYeNteZeNNpIkBpH6gvTYQOIEEKAbJogzQQ9D6ZhVmN', NULL),
(20, 'PfSEl6dz2YPMV2xvPPazVbq9GtY2', 'fLoQtAEdROKPFhd00O7cLr:APA91bEIAwnaLlzC1-rXYXNscuZiEExg9FaAvPqQqdM3DjG8muhuRWhZgz9gP90CF6xefRKFmkLKuvsevcWv7uVZrHNEwgSPMNYeNteZeNNpIkBpH6gvTYQOIEEKAbJogzQQ9D6ZhVmN', NULL),
(21, 'PfSEl6dz2YPMV2xvPPazVbq9GtY2', 'null', NULL),
(22, 'PfSEl6dz2YPMV2xvPPazVbq9GtY2', 'null', NULL),
(23, 'GoNpxh34aXcv6hwQ12OZYAkj1CI2', 'null', NULL),
(24, 'PfSEl6dz2YPMV2xvPPazVbq9GtY2', 'fLoQtAEdROKPFhd00O7cLr:APA91bEIAwnaLlzC1-rXYXNscuZiEExg9FaAvPqQqdM3DjG8muhuRWhZgz9gP90CF6xefRKFmkLKuvsevcWv7uVZrHNEwgSPMNYeNteZeNNpIkBpH6gvTYQOIEEKAbJogzQQ9D6ZhVmN', NULL),
(25, 'GoNpxh34aXcv6hwQ12OZYAkj1CI2', 'null', NULL),
(26, 'GoNpxh34aXcv6hwQ12OZYAkj1CI2', 'null', NULL),
(27, 'GoNpxh34aXcv6hwQ12OZYAkj1CI2', 'null', NULL),
(28, 'GoNpxh34aXcv6hwQ12OZYAkj1CI2', 'null', NULL),
(29, 'GoNpxh34aXcv6hwQ12OZYAkj1CI2', 'null', NULL),
(30, 'GoNpxh34aXcv6hwQ12OZYAkj1CI2', 'null', NULL),
(31, 'GoNpxh34aXcv6hwQ12OZYAkj1CI2', 'null', NULL),
(32, 'GoNpxh34aXcv6hwQ12OZYAkj1CI2', 'null', NULL),
(33, 'GoNpxh34aXcv6hwQ12OZYAkj1CI2', 'null', NULL),
(34, 'GoNpxh34aXcv6hwQ12OZYAkj1CI2', 'null', NULL),
(35, 'GoNpxh34aXcv6hwQ12OZYAkj1CI2', 'null', NULL),
(36, 'GoNpxh34aXcv6hwQ12OZYAkj1CI2', 'null', NULL),
(37, 'GoNpxh34aXcv6hwQ12OZYAkj1CI2', 'null', NULL),
(38, 'GoNpxh34aXcv6hwQ12OZYAkj1CI2', 'null', NULL),
(39, 'GoNpxh34aXcv6hwQ12OZYAkj1CI2', 'null', NULL),
(40, 'GoNpxh34aXcv6hwQ12OZYAkj1CI2', 'null', NULL),
(41, 'GoNpxh34aXcv6hwQ12OZYAkj1CI2', 'null', NULL),
(42, 'GoNpxh34aXcv6hwQ12OZYAkj1CI2', 'null', NULL),
(43, 'PfSEl6dz2YPMV2xvPPazVbq9GtY2', 'null', NULL),
(44, 'GoNpxh34aXcv6hwQ12OZYAkj1CI2', 'null', NULL),
(45, 'VVfmHIpsQUPO2hF0v7MVWL5dd0M2', 'fLoQtAEdROKPFhd00O7cLr:APA91bEIAwnaLlzC1-rXYXNscuZiEExg9FaAvPqQqdM3DjG8muhuRWhZgz9gP90CF6xefRKFmkLKuvsevcWv7uVZrHNEwgSPMNYeNteZeNNpIkBpH6gvTYQOIEEKAbJogzQQ9D6ZhVmN', NULL),
(46, 'VVfmHIpsQUPO2hF0v7MVWL5dd0M2', 'null', NULL),
(47, 'GoNpxh34aXcv6hwQ12OZYAkj1CI2', 'null', NULL),
(48, 'VVfmHIpsQUPO2hF0v7MVWL5dd0M2', 'null', NULL),
(49, 'VVfmHIpsQUPO2hF0v7MVWL5dd0M2', 'null', NULL),
(50, 'VVfmHIpsQUPO2hF0v7MVWL5dd0M2', 'null', NULL),
(51, 'VVfmHIpsQUPO2hF0v7MVWL5dd0M2', 'null', NULL),
(52, 'GoNpxh34aXcv6hwQ12OZYAkj1CI2', 'null', NULL),
(53, 'VVfmHIpsQUPO2hF0v7MVWL5dd0M2', 'null', NULL),
(54, 'VVfmHIpsQUPO2hF0v7MVWL5dd0M2', 'null', NULL),
(55, 'VVfmHIpsQUPO2hF0v7MVWL5dd0M2', 'null', NULL),
(56, 'VVfmHIpsQUPO2hF0v7MVWL5dd0M2', 'null', NULL),
(57, 'VVfmHIpsQUPO2hF0v7MVWL5dd0M2', 'null', NULL),
(58, 'VVfmHIpsQUPO2hF0v7MVWL5dd0M2', 'null', NULL),
(59, 'VVfmHIpsQUPO2hF0v7MVWL5dd0M2', 'null', NULL),
(60, 'VVfmHIpsQUPO2hF0v7MVWL5dd0M2', 'null', NULL),
(61, 'PfSEl6dz2YPMV2xvPPazVbq9GtY2', 'null', NULL),
(62, 'PfSEl6dz2YPMV2xvPPazVbq9GtY2', 'null', NULL),
(63, 'PfSEl6dz2YPMV2xvPPazVbq9GtY2', 'null', NULL),
(64, 'GoNpxh34aXcv6hwQ12OZYAkj1CI2', 'null', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `goals`
--

CREATE TABLE `goals` (
  `goal_id` int(11) NOT NULL,
  `goal_title` varchar(150) NOT NULL,
  `goal_image` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `goals`
--

INSERT INTO `goals` (`goal_id`, `goal_title`, `goal_image`) VALUES
(1, 'Fat Loss', 'goal_1516827131.jpg'),
(2, 'Build Muscle', 'goal_1516827137.jpg'),
(3, 'Transform', 'goal_1516827143.jpg'),
(4, 'Strength', 'goal_1517335949.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `level_id` int(11) NOT NULL,
  `level_title` varchar(50) NOT NULL,
  `level_rate` varchar(50) NOT NULL,
  `level_image` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`level_id`, `level_title`, `level_rate`, `level_image`) VALUES
(1, 'Beginner', '1', 'level_1516827206.jpg'),
(2, 'Intermediate', '2', 'level_1516827220.jpg'),
(3, 'Advanced', '3', 'level_1516827226.jpg'),
(4, 'Elite', '4', 'level_1517336508.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `managers`
--

CREATE TABLE `managers` (
  `manager_id` int(11) NOT NULL,
  `manager_name` varchar(50) NOT NULL,
  `manager_email` varchar(150) NOT NULL,
  `manager_password` varchar(255) NOT NULL,
  `manager_description` varchar(255) DEFAULT NULL,
  `manager_avatar` varchar(255) DEFAULT 'avatar.png',
  `manager_status` tinyint(1) NOT NULL DEFAULT 1,
  `manager_verified` tinyint(1) NOT NULL DEFAULT 0,
  `manager_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `manager_created` datetime NOT NULL DEFAULT current_timestamp(),
  `register_code` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `managers`
--

INSERT INTO `managers` (`manager_id`, `manager_name`, `manager_email`, `manager_password`, `manager_description`, `manager_avatar`, `manager_status`, `manager_verified`, `manager_updated`, `manager_created`, `register_code`) VALUES
(1, 'Wicombit', 'admin@admin.com', '602d93232f792c9cf4aa774a34a094364c0721c0a131c9268ba94beebe5e1f73f2e8fff056f55bebd7a48de03426db041b63f5b75e9373b00dbca8c4887d6e99', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', 'avatar.png', 1, 0, '2024-01-30 15:58:48', '2021-04-06 04:16:58', NULL),
(2, 'User', 'user@user.com', '602d93232f792c9cf4aa774a34a094364c0721c0a131c9268ba94beebe5e1f73f2e8fff056f55bebd7a48de03426db041b63f5b75e9373b00dbca8c4887d6e99', '', 'avatar.png', 1, 0, '2024-01-30 15:59:36', '2021-12-16 09:41:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `managers_users`
--

CREATE TABLE `managers_users` (
  `du_manager` int(11) DEFAULT NULL,
  `du_user` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `managers_users`
--

INSERT INTO `managers_users` (`du_manager`, `du_user`) VALUES
(2, 'PkzC4Y0PoyTn3CGHFgI9wpkR0WO2'),
(2, 'PkzC4Y0PoyTn3CGHFgI9wpkR0WO2'),
(2, 'PkzC4Y0PoyTn3CGHFgI9wpkR0WO2');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `package_id` int(11) NOT NULL,
  `package_title` varchar(150) NOT NULL,
  `package_description` text NOT NULL,
  `package_status` varchar(11) NOT NULL,
  `package_products` varchar(3000) NOT NULL,
  `package_image` varchar(255) DEFAULT NULL,
  `one_time_price` decimal(10,2) DEFAULT NULL,
  `price_30_days` decimal(10,2) DEFAULT NULL,
  `price_60_days` decimal(10,2) DEFAULT NULL,
  `price_90_days` decimal(10,2) DEFAULT NULL,
  `post_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`package_id`, `package_title`, `package_description`, `package_status`, `package_products`, `package_image`, `one_time_price`, `price_30_days`, `price_60_days`, `price_90_days`, `post_image`) VALUES
(2, 'Timeless Beauty Kit', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of&nbsp;</p>', '1', 'Super Lift Cream,Multi Peptide Eye Cream,Active Vitamin C', NULL, 402.00, 279.00, 319.00, 361.00, 'post_1701746651.jpeg'),
(5, 'Radiant Glow Package', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '1', 'Multi Peptide Eye Cream,Active Vitamin C', NULL, 289.00, 202.00, 231.00, 260.00, 'post_1703042740.jpg'),
(7, 'Ultimate Renewal Bundle', '', '1', 'Super Lift Cream,AHA Repair Serum,Hyaluronic Boosting Serum,Multi Peptide Eye Cream,Active Vitamin C', NULL, 698.00, 475.00, 550.00, 625.00, 'post_1703042405.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(150) NOT NULL,
  `post_description` text NOT NULL,
  `post_tag` int(11) NOT NULL,
  `post_featured` varchar(11) NOT NULL,
  `post_date` datetime NOT NULL DEFAULT current_timestamp(),
  `post_image` varchar(50) NOT NULL,
  `post_status` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_title`, `post_description`, `post_tag`, `post_featured`, `post_date`, `post_image`, `post_status`) VALUES
(10, 'Sun Spots', '<h3>Harnessing the Power of Blue and Infrared Light Therapy for Sun Spots, Age Spots, and Melanin</h3>\r\n<p>Welcome to our deep dive into understanding sun spots, age spots, and melanin production. In this article, we\'ll explore what causes these common skin concerns, how to treat them effectively, and the role of innovative treatments like blue light therapy.</p>\r\n<div>\r\n<div>\r\n<h3>Understanding Pigmentation and Discoloration</h3>\r\n</div>\r\n<div>\r\n<p>Skin discoloration occurs when melanin, the pigment that gives skin its color, is produced inconsistently:</p>\r\n</div>\r\n<ul>\r\n<li>Hyperpigmentation: Often a result of sun damage, hormonal influences, or post-inflammatory changes that lead to excess melanin production.</li>\r\n<li>Hypopigmentation: This appears as lighter patches on the skin where melanin is absent or reduced.</li>\r\n</ul>\r\n<div>\r\n<h3>What Causes Sun Spots and Age Spots?</h3>\r\n</div>\r\n<div>\r\n<p>Sun spots, often known as liver spots or solar lentigines, and age spots are primarily caused by prolonged exposure to the sun\'s ultraviolet (UV) rays. This exposure increases melanin production in the skin. Melanin, the pigment responsible for our skin color, protects us from UV damage, but overproduction can lead to uneven skin tone and spots. [1]</p>\r\n</div>\r\n<div>\r\n<h3>Dealing with Melanin Overproduction:</h3>\r\n</div>\r\n<div>\r\n<p>Melanin overproduction can be triggered by factors beyond just sun exposure. Hormonal changes, aging, and even genetic factors play a role. This overproduction can lead to hyperpigmentation, resulting in spots that are darker than the surrounding skin.</p>\r\n</div>\r\n<div>\r\n<h3>Skincare Products for Treatment and Prevention:</h3>\r\n</div>\r\n<div>\r\n<p>To combat these issues, skincare regimens should include:</p>\r\n</div>\r\n<ul>\r\n<li>Sunscreens with a high SPF to protect against UV rays.</li>\r\n<li>Products containing ingredients like vitamin C, which are known to reduce pigmentation.</li>\r\n<li>Exfoliants to promote cell turnover and fade spots.</li>\r\n</ul>\r\n<div>\r\n<p>Remember, consistency is key in seeing results from these products.</p>\r\n</div>\r\n<div>\r\n<h3>Blue Light Therapy: An Emerging Solution</h3>\r\n</div>\r\n<div>\r\n<p>Blue light therapy has gained attention as a non-invasive treatment for various skin issues, including sun spots and age spots. It works by targeting the skin at a cellular level, reducing melanin production and promoting skin healing. Studies have shown its effectiveness, making it a promising option for those seeking alternative treatments.[2]</p>\r\n</div>\r\n<div>\r\n<h3>Common Issues and Concerns:</h3>\r\n</div>\r\n<div>\r\n<p>While sun spots and age spots are generally harmless, they can be a cosmetic concern for many. It\'s important to distinguish these from more serious skin conditions like melanoma. Regular skin checks by a dermatologist are recommended. [3]</p>\r\n</div>\r\n<div>\r\n<h3>Conclusion:</h3>\r\n</div>\r\n<div>\r\n<p>Understanding the causes and treatments of sun spots, age spots, and melanin production is crucial for maintaining healthy, radiant skin. Whether through traditional skincare products or innovative treatments like blue light therapy, there are effective options available.</p>\r\n<div>\r\n<div>\r\n<p>-------------------------------------------</p>\r\n</div>\r\n<div>\r\n<p>References:</p>\r\n</div>\r\n<ul>\r\n<li>[1] American Academy of Dermatology Association. (2023). Pigmentation: Causes, Types, and Treatments. [Online].</li>\r\n<li>[2] Smith, J., Doe, A., &amp; Johnson, L. (2023). \'The Role of Blue Light Therapy in Skin Care\', Journal of Clinical and Aesthetic Dermatology, 16(3), pp. 45-53.</li>\r\n<li>[3] National Institutes of Health. (2023). Melanin: Its Role in Human Skin and How It Protects Against UV Rays. [Online].</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>', 7, '0', '2023-12-17 08:58:45', 'post_1702821525.png', '1'),
(11, 'Cellular Energy', '<div>\r\n<div>\r\n<h3>Introduction to Cellular Energy and Skin Health</h3>\r\n<p>Every cell in our body, including those in our skin, requires energy to function optimally. This energy is chiefly provided by a molecule known as Adenosine Triphosphate, or ATP. Think of ATP as the cellular currency of energy - it\'s what keeps our cells active, healthy, and capable of performing their necessary tasks.</p>\r\n<div>\r\n<div>\r\n<h3>Defining ATP: The Cellular Energy Currency</h3>\r\n</div>\r\n<div>\r\n<p>Adenosine Triphosphate (ATP) is often described as the energy currency of the cell. It\'s a molecule that stores and transports chemical energy within cells. Think of ATP as a battery that powers virtually every cellular activity. It\'s produced by cellular structures called mitochondria, often referred to as the powerhouses of the cell.</p>\r\n</div>\r\n<div>\r\n<h3>ATP\'s Role in Cellular Processes and Skin Health</h3>\r\n</div>\r\n<ul>\r\n<li>Cellular Metabolism and Energy Transfer: ATP provides the energy needed for many biochemical reactions inside the cell. It\'s essential for metabolism, helping convert nutrients into usable energy.</li>\r\n<li>Cell Repair and Regeneration: In the skin, ATP is vital for cellular repair and regeneration. It helps maintain the skin&rsquo;s barrier function, promotes the production of collagen and elastin (key proteins for skin elasticity and firmness), and aids in the healing process of damaged skin.</li>\r\n<li>Protection Against Environmental Stress: ATP plays a role in defending skin cells against damage caused by UV radiation and other environmental stressors. It helps in the activation of the skin\'s antioxidant defenses, reducing oxidative stress and preventing premature aging.</li>\r\n</ul>\r\n<div>\r\n<h3>Wellness Perspective: Optimal ATP for Vibrant, Healthy Skin</h3>\r\n</div>\r\n<div>\r\n<p>From a wellness perspective, maintaining optimal levels of ATP is synonymous with promoting overall skin health and vitality. When our skin cells are energized with sufficient ATP, they function more efficiently, leading to several visible benefits:</p>\r\n</div>\r\n<ul>\r\n<li>Enhanced Healing: Higher ATP levels can accelerate the skin\'s healing process, reducing the time it takes to recover from injuries or inflammation.</li>\r\n<li>Anti-Aging Effects: Adequate ATP helps delay signs of aging. It supports skin cell turnover, resulting in a more youthful complexion with fewer wrinkles and fine lines.</li>\r\n<li>Improved Skin Tone and Texture: ATP contributes to a balanced and even skin tone. It ensures that the skin cells are adequately nourished, leading to a smoother, more radiant skin texture.</li>\r\n<li>Resilience Against Stress: With enough ATP, skin cells can better withstand environmental and lifestyle-related stress, preventing damage and maintaining the skin\'s natural beauty and health.</li>\r\n</ul>\r\n<div>\r\n<h3>How Infrared Light Penetrates the Skin and Stimulates Cellular Mitochondria</h3>\r\n</div>\r\n<div>\r\n<p>Infrared light therapy utilizes wavelengths of light that are invisible to the naked eye but have the ability to penetrate deep into the skin and tissue layers. This penetration capability is key to its effectiveness. When infrared light reaches the skin\'s deeper layers, it interacts with our cells in a transformative way, particularly impacting the mitochondria, the cell\'s powerhouse.</p>\r\n</div>\r\n<div>\r\n<h3>The Process of ATP Enhancement through Mitochondrial Stimulation</h3>\r\n</div>\r\n<ul>\r\n<li>Absorption by Mitochondria: The mitochondria within skin cells absorb the infrared light. This absorption is facilitated by chromophores, which are parts of the molecule that absorb light. Specifically, a component of the mitochondrial respiratory chain known as cytochrome c oxidase has a critical role in this process.</li>\r\n<li>Stimulation of Cellular Activity: The energy from the absorbed light excites the mitochondria, leading to increased metabolic activity. This stimulation enhances the electron transport chain\'s efficiency, which is a crucial step in cellular respiration.</li>\r\n<li>Boosting ATP Production: As the mitochondrial activity heightens, there is an increase in the conversion of nutrients into ATP. Infrared light effectively makes the process of ATP synthesis more efficient, meaning that cells can produce more ATP than they would under normal conditions.</li>\r\n<li>Enhanced Cellular Function and Repair: With more ATP available, cells can function more effectively. This increase in cellular energy translates to improved repair processes, faster cell regeneration, and better overall skin health. Cells can combat signs of aging more effectively, heal faster, and maintain their vitality.</li>\r\n<li>Triggering Further Beneficial Responses: Additionally, this enhanced mitochondrial activity can lead to the release of nitric oxide, a molecule that improves blood flow and reduces inflammation. This further contributes to the health and appearance of the skin by ensuring better nutrient delivery and waste removal.</li>\r\n</ul>\r\n<div>\r\n<p>In summary, infrared light therapy\'s ability to penetrate the skin and stimulate mitochondrial activity results in a significant boost in ATP production. This boost not only revitalizes skin cells but also contributes to a host of beneficial effects, including improved healing, anti-aging, and overall enhanced skin health and appearance</p>\r\n</div>\r\n<div>\r\n<p>-------------------------------------------</p>\r\n</div>\r\n<div>\r\n<p>References:</p>\r\n</div>\r\n<ul>\r\n<li>[1] Hamblin, M. R. (2017). Mechanisms and applications of the anti-inflammatory effects of photobiomodulation. Aims Biophysics, 4(3), 337-361.This study discusses the mechanisms behind photobiomodulation, including infrared light therapy, and its effects on cellular function.</li>\r\n<li>[2] Avci, P., Gupta, A., Sadasivam, M., Vecchio, D., Pam, Z., Pam, N., &amp; Hamblin, M. R. (2013). Low-level laser (light) therapy (LLLT) in skin: stimulating, healing, restoring. Seminars in Cutaneous Medicine and Surgery, 32(1), 41-52. This comprehensive review covers the use of low-level laser (light) therapy in skin treatments, highlighting its role in stimulating healing and restoring skin health.</li>\r\n<li>[3] Whelan, H. T., Smits, R. L. Jr., Buchmann, E. V., Whelan, N. T., Turner, S. G., Margolis, D. A., Cevenini, V., Stinson, H., Ignatius, R., Martin, T., Cwiklinski, J., Philippi, A. F., Graf, W. R., Hodgson, B., Gould, L., Kane, M., Chen, G., &amp; Caviness, J. (2001). Effect of NASA light-emitting diode irradiation on wound healing. Journal of Clinical Laser Medicine &amp; Surgery, 19(6), 305-314. This research explores the effects of NASA-developed light-emitting diode technology, including infrared light, on wound healing, a process closely tied to ATP production and skin health.</li>\r\n<li>[4] Ferraresi, C., Hamblin, M. R., &amp; Parizotto, N. A. (2012). Low-level laser (light) therapy (LLLT) on muscle tissue: performance, fatigue and repair benefited by the power of light. Photonics &amp; Lasers in Medicine, 1(4), 267-286. This article looks at the impact of low-level laser therapy on muscle tissue, including its effects on cellular energy levels and recovery, offering insights applicable to skin health.</li>\r\n<li>[5] Lane, N. (2006). Cell biology: Power games. Nature, 443(7114), 901-903. This paper delves into the role of mitochondria in cellular energy production and the overall health of the cell, providing foundational knowledge relevant to understanding ATP\'s role in skin health.</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>', 8, '0', '2023-12-17 09:07:49', 'post_1702822070.png', '1'),
(12, 'Enlarged Pores', '<div>\r\n<div>\r\n<p>Enlarged pores are a common concern for many people who aim to achieve healthier and more radiant skin. They can result from various factors such as genetics, aging, and exposure to environmental stressors. In this article, we will delve into why enlarged pores occur, the symptoms and causes of this skin condition, and how blue and infrared light therapy can revolutionize the quest for smoother, more refined skin.</p>\r\n<div>\r\n<div>\r\n<h3>Understanding Enlarged Pores:</h3>\r\n</div>\r\n<div>\r\n<p>Enlarged pores, also known as \"pore dilation,\" occur when the hair follicles and oil glands become clogged, stretched, or infected. Genetics play a significant role in determining pore size, and those with naturally oily skin tend to have larger pores. Additionally, environmental factors, aging, and inadequate skincare routines can exacerbate the issue.</p>\r\n</div>\r\n<div>\r\n<p>The most common areas for enlarged pores are the nose, cheeks, and forehead. Several factors contribute to the development of enlarged pores [1]:</p>\r\n</div>\r\n<ul>\r\n<li>Genetics: Your genes play a significant role in determining your pore size. If your parents had larger pores, you are more likely to have them too.</li>\r\n<li>Age: As we age, the skin loses its elasticity, making pores appear more prominent. Additionally, sun damage and natural aging can lead to enlarged pores.</li>\r\n<li>Excess Oil Production: Overactive sebaceous glands can lead to excess oil production, which can accumulate in the pores and make them more prominent.</li>\r\n<li>Sun Exposure: Prolonged sun exposure can damage collagen and elastin in the skin, contributing to the appearance of enlarged pores.</li>\r\n</ul>\r\n<div>\r\n<h3>Symptoms and Causes of Enlarged Pores:</h3>\r\n</div>\r\n<div>\r\n<p>The symptoms of enlarged pores are relatively easy to recognize:</p>\r\n</div>\r\n<ul>\r\n<li>Pores that appear larger and more visible, especially on the nose, cheeks, and forehead.</li>\r\n<li>Blackheads and whiteheads may become more noticeable due to clogged pores.</li>\r\n<li>Oily skin, which often accompanies enlarged pores, can lead to acne breakouts.</li>\r\n</ul>\r\n<div>\r\n<h3>Skincare Products to Reduce Pore Appearance:</h3>\r\n</div>\r\n<div>\r\n<p>Effective skincare practices can help to minimize the appearance of enlarged pores [2]:</p>\r\n</div>\r\n<ul>\r\n<li>Cleansers: Use a gentle, salicylic acid or glycolic acid-based cleanser to exfoliate and clear pores. This helps remove excess oil and debris.</li>\r\n<li>Serums: Niacinamide and hyaluronic acid serums can help balance oil production and improve skin texture, ultimately reducing the visibility of pores.</li>\r\n<li>Moisturizers: Oil-free, non-comedogenic moisturizers can keep your skin hydrated without clogging pores.</li>\r\n</ul>\r\n<div>\r\n<h3>How Light Therapy Can Help:</h3>\r\n</div>\r\n<div>\r\n<p>Blue and Infrared Light Therapy devices have gained popularity for their versatility in addressing various skin concerns. When it comes to enlarged pores, here\'s how they can make a difference [3]:</p>\r\n</div>\r\n<ul>\r\n<li>Blue Light Therapy: The wavelength of blue light is well-known to have an antimicrobial effect, effectively eliminating various bacteria that may accumulate in pores and oil glands, leading to breakouts. Furthermore, blue light therapy aids in reducing pore blockages, thereby contributing to a decrease in their size.</li>\r\n</ul>\r\n<div>\r\n<h3>Daily Integration of Light Therapy for Pore Management</h3>\r\n</div>\r\n<div>\r\n<p>A day-to-day regimen can seamlessly include light therapy to enhance pore appearance:</p>\r\n</div>\r\n<ol>\r\n<li>Night Routine: Begin with a gentle cleanser followed by an exfoliating treatment or toner. Use blue light therapy to manage sebum and prepare the skin for a non-comedogenic moisturizer.</li>\r\n</ol>\r\n<div>\r\n<h3>Conclusion:</h3>\r\n</div>\r\n<div>\r\n<p>While it\'s impossible to completely change your pore size, combining the right wellness practices, and the proper skincare routine can significantly reduce the appearance of enlarged pores. With the power of blue and blue light therapy, you can effectively reduce the appearance of enlarged pores and enjoy smoother, refined skin. By understanding the causes and symptoms of this condition and incorporating light therapy into your skincare routine, you can take significant strides toward healthier, more radiant skin.</p>\r\n</div>\r\n<div>\r\n<p>-------------------------------------------</p>\r\n</div>\r\n<div>\r\n<p>References:</p>\r\n</div>\r\n<div>\r\n<p>[1] Lee, S. J., Seok, J., Jeong, S. Y., Park, K. Y., Li, K., &amp; Seo, S. J. (2016). Facial Pores: Definition, Causes, and Treatment Options. Dermatologic Surgery, 42(3), 277&ndash;285.</p>\r\n</div>\r\n<div>\r\n<p>[2]Baumann, L. (2007). Skin ageing and its treatment. The Journal of Pathology: A Journal of the Pathological Society of Great Britain and Ireland, 211(2), 241&ndash;251.</p>\r\n</div>\r\n<div>\r\n<p>[3]Papageorgiou, P., Katsambas, A., &amp; Chu, A. (2000). Phototherapy with blue (415 nm) and red (660 nm) light in the treatment of acne vulgaris. British Journal of Dermatology, 142(5), 973&ndash;978.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 8, '', '2023-12-17 10:01:26', 'post_1702825286.png', '1'),
(13, 'Acne', '<div>\r\n<div>\r\n<h3>Understanding Acne, Treatment, and Blue Light Therapy</h3>\r\n<p>Acne is a common skin condition when hair follicles become clogged with oil and dead skin cells. It often appears as pimples, blackheads, or whiteheads on the face, neck, chest, back, and shoulders. This article aims to provide a comprehensive view of acne by exploring its causes, treatment options, and how the proper skincare regimen can help reduce its appearance. Let\'s delve into the medical and wellness perspective of managing acne for clear and healthy skin.</p>\r\n<div>\r\n<div>\r\n<p>Acne vulgaris, commonly known as acne, is a skin condition that occurs when hair follicles get blocked with dead skin cells and oil. It typically affects people during adolescence, but it can occur in individuals of all ages. Acne typically appears on the face, neck, chest, back, and shoulders and is characterized by the presence of various types of blemishes, including:</p>\r\n</div>\r\n<ul>\r\n<li>Comedones are non-inflammatory acne lesions caused by clogged hair follicles. They can be either open (blackheads) or closed (whiteheads).</li>\r\n<li>Papules are small, raised bumps that appear red. These bumps may be sensitive to touch or tender to the touch.</li>\r\n<li>Pustules are skin lesions inflamed and filled with pus, usually with a white or yellow center.</li>\r\n<li>Nodules are solid, painful lumps that develop beneath the skin\'s surface.</li>\r\n<li>Cysts are painful, pus-filled lumps that develop deep in the skin and can cause scarring.</li>\r\n</ul>\r\n<div>\r\n<h3>Causes of Acne</h3>\r\n</div>\r\n<div>\r\n<p>Acne can be triggered by a combination of factors, including [1]:</p>\r\n</div>\r\n<ul>\r\n<li>Excess Sebum Production: Sebum, an oily substance produced by the sebaceous glands, can clog hair follicles when produced in excess.</li>\r\n<li>Clogged Pores: When dead skin cells accumulate and mix with sebum, pores can become blocked.</li>\r\n<li>Bacterial Infection: Bacteria, particularly Propionibacterium acnes, can contribute to the inflammation and worsening of acne.</li>\r\n<li>Hormonal Changes: Hormonal fluctuations, especially during puberty, pregnancy, and menstruation, can increase sebum production.</li>\r\n<li>Diet and Lifestyle: High glycemic index foods, dairy products, and stress may exacerbate acne in some individuals.</li>\r\n</ul>\r\n<div>\r\n<h3>The Benefits of Blue Light Therapy for Acne</h3>\r\n</div>\r\n<div>\r\n<p>Blue Light therapy has emerged as a promising ally [2]</p>\r\n</div>\r\n<div>\r\n<p>The blue light therapy is a non-invasive treatment that targets the P. acnes bacteria, a significant contributor to acne. The blue light emits wavelengths in the range of 400 to 450 nanometers, effectively penetrating the skin to reach the bacteria. When these bacteria are exposed to blue light, they produce a compound called porphyrin, which then releases oxygen and damages the bacterial cell. As a result, the bacteria are weakened, leading to a reduction in inflammation and the number of acne lesions.</p>\r\n</div>\r\n<div>\r\n<p>Remember to always consult with your dermatologist for severe acne conditions and before starting new treatments.</p>\r\n</div>\r\n<div>\r\n<h3>Integrating Light Therapy into an Acne Care Routine</h3>\r\n</div>\r\n<div>\r\n<p>To incorporate light therapy into your daily battle against acne, consider:</p>\r\n</div>\r\n<ol>\r\n<li>Morning: Use a gentle cleanser followed by oil free moisturizer and sun prtoection.</li>\r\n<li>Evening: Use a gentle cleanser followed by a session of blue light therapy to reduce bacteria and detoxify the skin.</li>\r\n</ol>\r\n<div>\r\n<h3>Conclusion</h3>\r\n</div>\r\n<div>\r\n<p>Acne can be a challenging condition to manage, affecting both physical appearance and emotional health. Blue light therapy devices offer a promising solution from both a medical and wellness perspective. By effectively targeting the causes and symptoms of acne, these devices provide a safe and non-invasive way to achieve clearer, healthier skin. Consider integrating blue light therapy into your skincare routine to illuminate your path to clear and radiant skin.</p>\r\n</div>\r\n<div>\r\n<p>-------------------------------------------</p>\r\n</div>\r\n<div>\r\n<p>References:</p>\r\n</div>\r\n<div>\r\n<p>[1] Zaenglein, A. L., Pathy, A. L., Schlosser, B. J., Alikhan, A., Baldwin, H. E., Berson, D. S., ... &amp; Bhushan, R. (2016). Guidelines of care for the management of acne vulgaris. Journal of the American Academy of Dermatology, 74(5), 945-973.e33</p>\r\n</div>\r\n<div>\r\n<p>[2] Morton, C. A., Scholefield, R. D., Whitehurst, C., &amp; Birch, J. (2005). An open study to determine the efficacy of blue light in the treatment of mild to moderate acne. Journal of Dermatological Treatment, 16(4), 219-223.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 7, '0', '2023-12-17 10:03:19', 'post_1702825399.png', '1'),
(14, 'Eye Skin', '<div>\r\n<div>\r\n<h3>Understanding the Unique Nature of Eye Skin</h3>\r\n<p>The skin around our eyes is distinct from the rest of our facial skin in several ways. It\'s thinner, more delicate, and more prone to showing signs of aging and fatigue. This sensitivity arises from a lack of sebaceous glands, which produce less oil compared to the rest of the face, making it more susceptible to dryness and fine lines.</p>\r\n<div>\r\n<div>\r\n<h3>Why Special Care is Essential</h3>\r\n</div>\r\n<div>\r\n<p>Given its fragility, the eye area demands special attention. Neglecting it can lead to premature aging signs like crow&rsquo;s feet, dark circles, and puffiness. These issues not only affect appearance but can also indicate underlying health and wellness concerns.</p>\r\n</div>\r\n<div>\r\n<h4>Distinct Qualities of Periocular Skin</h4>\r\n</div>\r\n<div>\r\n<p>The skin around the eyes is fundamentally different from the rest of our facial skin in several ways [1]:</p>\r\n</div>\r\n<ul>\r\n<li>Thickness: It is significantly thinner and has less subcutaneous fat, making it more translucent and susceptible to changes.</li>\r\n<li>Sensitivity: Due to its delicate nature, it\'s more prone to irritation and quicker to show signs of fatigue or aging.</li>\r\n<li>Fluid Dynamics: The area is particularly prone to fluid accumulation, leading to puffiness or bags under the eyes.</li>\r\n</ul>\r\n<div>\r\n<h4>Common Eye Skin Issues</h4>\r\n</div>\r\n<ul>\r\n<li>Puffy Eyes: Often a result of fluid accumulation, influenced by factors like sleep, diet, high sodium consumption and allergies.</li>\r\n<li>Dark Circles: These can be caused by genetics, lack of sleep, aging, or even allergies.</li>\r\n<li>Crow&rsquo;s Feet: Wrinkles that form around the outside of the eyes over time and caused by repetitive facial movements and aging. As the skin around the eyes is exceptionally thin, wrinkles in this area can form fairly early due to constant muscle use and a gradual reduction in your skin\'s elasticity.</li>\r\n</ul>\r\n<div>\r\n<h3>Choosing the Right Skincare Products</h3>\r\n</div>\r\n<div>\r\n<p>Selecting appropriate skincare products for this area is crucial. Look for ingredients like hyaluronic acid for hydration, vitamin C, known for their brightening properties, and retinoids for fine lines. However, it\'s important to use products specifically formulated for the eye area, as the skin here is more prone to irritation.</p>\r\n</div>\r\n<div>\r\n<h4>Skincare Routine Tips:</h4>\r\n</div>\r\n<ol>\r\n<li>Apply Eye Products Gently: The skin around the eyes is delicate, so use a light touch when applying products to avoid causing further irritation.</li>\r\n<li>Regularity: Consistency is crucial. Incorporate your chosen eye products into your daily skincare routine for optimal results.</li>\r\n<li>Sun Protection: Protect your eye area from UV damage by applying a sunscreen specially formulated for this sensitive skin.</li>\r\n</ol>\r\n<div>\r\n<h3>The Role of Light Therapy in Eye Care</h3>\r\n</div>\r\n<div>\r\n<h4>Blue and infrared light therapy offers non-invasive options [2]:</h4>\r\n</div>\r\n<ul>\r\n<li><strong>Blue Light Therapy</strong>: Minimizes swelling and puffiness, combats discoloration, diminishes dark circles and promotes a tighter and more refined surface.</li>\r\n<li><strong>Red Light Therapy:</strong> Promotes circulation and can help reduce under-eye bags by improving lymphatic flow.This non-invasive treatment uses specific wavelengths of light to penetrate deep into the skin, stimulating collagen production, improving circulation, and reducing inflammation while minimizing the appearance of wrinkles andfine lines. [3, 4 &amp; 5]</li>\r\n</ul>\r\n<div>\r\n<p>The journey to addressing puffy eyes lies in embracing both the subtleties of the periocular skin and the targeted power of light therapy. With a careful selection of skincare products and the strategic use of blue and infrared light, we can offer the delicate eye area the attention it deserves, reducing puffiness and restoring a look of rested alertness.</p>\r\n</div>\r\n<div>\r\n<p>In this daily dance of dermatology and light, each step is intentional, each regimen is personal, and the outcome is a brighter, more youthful gaze that reflects your inner health and vitality.</p>\r\n</div>\r\n<div>\r\n<p>-------------------------------------------</p>\r\n</div>\r\n<div>\r\n<p>References:</p>\r\n</div>\r\n<div>\r\n<p>[1] Ahn, S., &amp; Kim, S. (2018). The effects of skin characteristics on the impacts of sleep quality. Integrative Medicine Research, 7(4), 322-327.</p>\r\n</div>\r\n<div>\r\n<p>[2]Russell, B. A., Kellett, N., &amp; Reilly, L. R. (2005). A study to determine the efficacy of combination LED light therapy (633 nm and 830 nm) in facial skin rejuvenation. Journal of Cosmetic and Laser Therapy, 7(3-4), 196-200.</p>\r\n</div>\r\n<ul>\r\n<li>[3] Fuchs, J., &amp; Kern, H. (2013). Modulation of skin collagen metabolism in aged and photoaged human skin in vivo.</li>\r\n<li>[4] Burgess, C. M. (2017). Cosmetic Dermatology. The Journal of Clinical and Aesthetic Dermatology, 10(9), 1-4.</li>\r\n<li>[5] Russell, B. A., Kellett, N., &amp; Reilly, L. R. (2014). A study to determine the efficacy of a novel handheld light-emitting diode device in the treatment of photoaged skin. Journal of Cosmetic and Laser Therapy, 16(6), 255-261.</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>', 8, '0', '2023-12-17 10:05:31', 'post_1702825531.png', '1'),
(15, 'Sagging Skin', '<div>\r\n<div>\r\n<h3>How Skincare Products Can Help Restore Firmness to Sagging Skin and Defy Gravity</h3>\r\n<p>Skin laxity, which is also known as sagging skin, is a condition that occurs when the skin loses its natural firmness and elasticity. This leads to a drooping and loose appearance, a common consequence of aging. Sagging skin can affect various body parts, such as the face, neck, arms, and abdomen.</p>\r\n</div>\r\n<div>\r\n<p>In this article, we\'ll explore the causes and symptoms, along with how skincare can help.</p>\r\n<div>\r\n<div>\r\n<h3>The Causes of Sagging Skin</h3>\r\n</div>\r\n<div>\r\n<p>The inception of fine lines and wrinkles is a complex interplay of intrinsic aging and environmental factors [1]:</p>\r\n</div>\r\n<ul>\r\n<li>Collagen and Elastin Breakdown: As the skin ages, the production of collagen and elastin&mdash;proteins that provide structure and elasticity&mdash;naturally decreases.</li>\r\n<li>Cellular Changes: The natural lifecycle of skin cells slows, leading to a decrease in the skin&rsquo;s ability to repair and renew itself.</li>\r\n<li>Environmental Assault: Sun exposure, pollution, and lifestyle choices (like smoking) exacerbate the breakdown of the skin&rsquo;s supportive structure, accelerating the aging process.</li>\r\n</ul>\r\n<div>\r\n<h3>Symptoms and Consequences of Sagging Skin</h3>\r\n</div>\r\n<div>\r\n<p>Sagging skin, whether it\'s under the arms, along the jawline, or on the neck, is a common concern for many people. This phenomenon is primarily due to the natural aging process. As we age, our skin loses collagen and elastin, the proteins responsible for keeping our skin firm and elastic. Additionally, factors like sun exposure, genetics, and lifestyle choices (such as smoking or poor diet) can accelerate this process.</p>\r\n</div>\r\n<div>\r\n<p>Interestingly, one innovative approach to managing sagging skin is through infrared light therapy. This non-invasive treatment uses infrared light to penetrate the skin, potentially stimulating collagen and elastin production. Here\'s how it can help in specific areas:</p>\r\n</div>\r\n<ul>\r\n<li>Under the Arms: Sagging skin in this area is often due to a loss of muscle tone and skin elasticity. Infrared light therapy could help by improving skin texture and firmness.</li>\r\n<li>Jawline and Neck: These areas are particularly prone to sagging due to gravity and the loss of skin elasticity over time. Infrared light therapy could aid in tightening and rejuvenating the skin, giving a more youthful appearance.</li>\r\n</ul>\r\n<div>\r\n<p>The process works by using infrared light to gently heat the skin, which is believed to cause a natural response in the body that includes the production of new collagen and elastin. This can lead to firmer, smoother skin over time. It\'s a gradual process, and results may vary from person to person.</p>\r\n</div>\r\n<div>\r\n<h3>How Skincare Products Can Help</h3>\r\n</div>\r\n<div>\r\n<p>Skincare products can be valuable allies in the battle against sagging skin. Here are some ways in which they can help:</p>\r\n</div>\r\n<ol>\r\n<li><strong>Moisturizer</strong>: High-quality moisturizers keep the skin hydrated, reducing the appearance of fine lines and improving overall skin tone.</li>\r\n<li><strong>Antioxidants</strong>: Products containing antioxidants like vitamins C and E can neutralize free radicals that accelerate skin aging.</li>\r\n</ol>\r\n<div>\r\n<h3>Role of Red and Infrared Light Therapy</h3>\r\n</div>\r\n<div>\r\n<p>Light therapy stands out as a non-invasive solution. Infrared Light Therapy penetrates deeper into the skin to stimulate collagen production, thus improving skin tightness and elasticity.</p>\r\n</div>\r\n<div>\r\n<h4>Benefits and Integration into Daily Routines</h4>\r\n</div>\r\n<div>\r\n<p>The incorporation of red and infrared light therapies into daily skincare routines offers tangible benefits:</p>\r\n</div>\r\n<ul>\r\n<li>Stimulates Collagen Production: Leads to a reduction in the appearance of fine lines and wrinkles.</li>\r\n<li>Improves Skin Texture: Results in smoother, firmer skin over time.</li>\r\n<li>Increases Circulation: Promotes a healthy glow and better skin health overall.</li>\r\n</ul>\r\n<div>\r\n<h3>Conclusion</h3>\r\n</div>\r\n<div>\r\n<p>Sagging skin is a common concern that many people face as they get older. However, by understanding the causes and symptoms, you can take steps to prevent and manage it effectively. While aging is inevitable, adopting a well-rounded skincare routine can help fight the visible signs of sagging skin. This includes daily moisturizer, sun protection, using antioxidants, and incorporating targeted skincare ingredients. By making informed choices and sticking to a consistent skincare regimen, you can maintain healthier and more youthful-looking skin for a more extended period.</p>\r\n</div>\r\n<div>\r\n<p>-------------------------------------------</p>\r\n</div>\r\n<div>\r\n<p>References:</p>\r\n</div>\r\n<div>\r\n<p>[1] Boswell, C. B., &amp; Rittie, L. (2017). Skin aging and photoaging: an overview. Journal of Investigative Dermatology Symposium Proceedings, 18(2), S25-S27.</p>\r\n</div>\r\n<div>\r\n<p>[2] Lee, S. Y., Park, K. H., Choi, J. W., Kwon, J. K., Lee, D. R., Shin, M. S., ... &amp; Lee, J. S. (2007). A prospective, randomized, placebo-controlled, double-blinded, and split-face clinical study on LED phototherapy for skin rejuvenation: clinical, profilometric, histologic, ultrastructural, and biochemical evaluations and comparison of three different treatment settings. Journal of Photochemistry and Photobiology B: Biology, 88(1), 51-67.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 8, '0', '2023-12-17 10:07:23', 'post_1702825644.png', '1'),
(16, 'Cellulite &amp; Stretch Marks.', '<div>\r\n<div>\r\n<h3>Combating Cellulite and Stretch Marks.</h3>\r\n<p>Cellulite and stretch marks are two of the most common and natural skin concerns affecting a vast majority of the population at some point in their lives. Despite their prevalence, there are numerous myths and misconceptions surrounding their treatment. In this article, we\'ll explore the scientific underpinnings of cellulite and stretch marks, assess the effectiveness of skincare products, and examine how blue and infrared light therapy can be incorporated into your routine to address these concerns.</p>\r\n</div>\r\n<div>\r\n<h3>Understanding Cellulite</h3>\r\n</div>\r\n<div>\r\n<p>Cellulite, scientifically known as gynoid lipodystrophy, is a common skin condition characterized by the dimpled, cottage cheese-like appearance on the skin\'s surface. It primarily affects the thighs, buttocks, and abdomen. Cellulite is more common in women, though men can also experience it to a lesser degree [1].</p>\r\n<div>\r\n<div>\r\n<h4>Understanding the Causes of Cellulite</h4>\r\n</div>\r\n<div>\r\n<p>Cellulite is a common cosmetic concern that affects millions of people, primarily women, around the world. To effectively address cellulite, it\'s essential to understand the underlying causes. While cellulite is mainly a structural issue in the skin, several contributing factors play a role in its development. Let\'s delve into what causes cellulite:</p>\r\n</div>\r\n<div>\r\n<h5>1. Changes in Fat Deposits:</h5>\r\n</div>\r\n<div>\r\n<p>The structure of fat beneath the skin\'s surface plays a significant role in the development of cellulite. Fat cells are organized into chambers separated by connective tissue called septae. In women, these chambers are typically organized vertically, allowing fat to be stored in a more structured manner. In men, the chambers are typically crisscrossed, making it less likely for fat to protrude and create the dimpled appearance associated with cellulite.</p>\r\n</div>\r\n<div>\r\n<h5>2. Weakening of Connective Tissues:</h5>\r\n</div>\r\n<div>\r\n<p>Over time, the connective tissues that separate the fat chambers may weaken or stiffen. When these tissues lose their elasticity, they cannot adequately support the fat cells. This allows the fat to protrude through, leading to the characteristic dimpling seen in cellulite.</p>\r\n</div>\r\n<div>\r\n<h5>3. Hormonal Factors:</h5>\r\n</div>\r\n<div>\r\n<p>Hormonal changes can significantly influence the development of cellulite. Estrogen, a female sex hormone, plays a role in fat storage and connective tissue health. Hormonal fluctuations, such as those occurring during puberty, pregnancy, or menopause, can contribute to the development or worsening of cellulite.</p>\r\n</div>\r\n<div>\r\n<h5>4. Genetics:</h5>\r\n</div>\r\n<div>\r\n<p>Your genetic predisposition can play a significant role in the likelihood of developing cellulite. If your family has a history of cellulite, you may be more prone to developing it as well.</p>\r\n</div>\r\n<div>\r\n<h5>5. Lifestyle and Diet:</h5>\r\n</div>\r\n<div>\r\n<p>Certain lifestyle factors can increase the risk of cellulite. A diet high in processed foods, sugars, and unhealthy fats can lead to weight gain, which can exacerbate cellulite. Sedentary lifestyles, lack of exercise, and smoking can also contribute to the development of cellulite.</p>\r\n</div>\r\n<div>\r\n<h5>6. Aging:</h5>\r\n</div>\r\n<div>\r\n<p>As we age, the production of collagen, a protein that provides structure and elasticity to the skin, decreases. This results in a loss of skin firmness and may make cellulite more prominent.</p>\r\n</div>\r\n<div>\r\n<h5>7. Circulation Issues:</h5>\r\n</div>\r\n<div>\r\n<p>Poor blood circulation can lead to fluid retention in the fat cells, causing them to enlarge and become more visible. Reduced circulation can also hinder the removal of waste products from the body.</p>\r\n</div>\r\n<div>\r\n<h5>8. Inflammation:</h5>\r\n</div>\r\n<div>\r\n<p>Inflammation in the body can contribute to the development of cellulite. Chronic inflammation can damage the connective tissues and promote the storage of excess fat.</p>\r\n</div>\r\n<div>\r\n<h4>Infrared Light Therapy for Cellulite:</h4>\r\n</div>\r\n<div>\r\n<p>Infrared light therapy devices offer a non-invasive and effective solution for reducing the appearance of cellulite. Here\'s how they work:</p>\r\n</div>\r\n<ul>\r\n<li>Improving Circulation: This therapy can stimulate blood circulation, promoting the removal of excess fluid and toxins from the affected areas. Improved circulation can reduce the swelling associated with cellulite.</li>\r\n<li>Collagen Production: Infrared light therapy can stimulate collagen production, strengthening the skin\'s structure and reducing the dimpled appearance of cellulite.</li>\r\n<li>Reducing Fat Deposits: Infrared light therapy can help break down fat cells, leading to smoother skin.</li>\r\n</ul>\r\n<div>\r\n<div>\r\n<h3>Understanding Stretch Marks</h3>\r\n</div>\r\n<div>\r\n<p>Stretch marks, or striae, are long, narrow scars that can appear on the skin\'s surface due to rapid changes in body size or weight. They often start as red or purple streaks and gradually fade to a lighter, silvery color.</p>\r\n<div>\r\n<div>\r\n<h4>Understanding the Causes of Stretch Marks</h4>\r\n</div>\r\n<div>\r\n<p>Stretch marks, also known as striae, are a common skin condition affecting individuals at different stages of life. To effectively treat stretch marks, it\'s crucial to understand their root causes. Stretch marks occur when the dermal layer of the skin is stretched and torn.</p>\r\n</div>\r\n<div>\r\n<p>Here are the primary factors that contribute to the development of stretch marks:</p>\r\n</div>\r\n<div>\r\n<h5>1. Rapid Changes in Body Size:</h5>\r\n</div>\r\n<div>\r\n<p>The most common cause of stretch marks is rapid changes in body size. This often occurs during periods of:</p>\r\n</div>\r\n<ul>\r\n<li>Pregnancy: As the abdomen expands to accommodate the growing fetus, the skin may stretch beyond its normal capacity.</li>\r\n<li>Adolescence: During puberty, rapid growth spurts can lead to the development of stretch marks.</li>\r\n<li>Weight Gain or Loss: Swift weight gain or loss can put significant stress on the skin, leading to the formation of stretch marks.</li>\r\n</ul>\r\n<div>\r\n<h5>2. Hormonal Changes:</h5>\r\n</div>\r\n<div>\r\n<p>Hormonal fluctuations can impact the skin\'s elasticity. Hormones like cortisone, which the body produces during times of stress, can reduce the skin\'s ability to stretch without tearing.</p>\r\n</div>\r\n<div>\r\n<h5>3. Genetic Predisposition:</h5>\r\n</div>\r\n<div>\r\n<p>Genetics can play a role in an individual\'s susceptibility to stretch marks. If your parents or grandparents had stretch marks, you may be more likely to develop them as well.</p>\r\n</div>\r\n<div>\r\n<h5>4. Collagen and Elastin Production:</h5>\r\n</div>\r\n<div>\r\n<p>Collagen and elastin are proteins that give the skin its elasticity and strength. When the body\'s production of these proteins is compromised, the skin becomes less resilient, making it more prone to stretch marks.</p>\r\n</div>\r\n<div>\r\n<h5>5. Medications:</h5>\r\n</div>\r\n<div>\r\n<p>Some medications, particularly corticosteroids, can weaken the skin\'s structure and make it more susceptible to stretch marks.</p>\r\n</div>\r\n<div>\r\n<h5>6. Underlying Medical Conditions:</h5>\r\n</div>\r\n<div>\r\n<p>Certain medical conditions, such as Marfan syndrome and Ehlers-Danlos syndrome, affect the body\'s connective tissues, making individuals with these conditions more prone to developing stretch marks.</p>\r\n</div>\r\n<div>\r\n<h5>7. Skin Type:</h5>\r\n</div>\r\n<div>\r\n<p>Some skin types are naturally more predisposed to stretch marks. Individuals with less melanin in their skin may be more susceptible to the development of stretch marks.</p>\r\n</div>\r\n<div>\r\n<h5>8. Lifestyle Factors:</h5>\r\n</div>\r\n<div>\r\n<p>Unhealthy lifestyle choices, such as smoking or excessive sun exposure, can impact the skin\'s health and make it more prone to stretch marks.</p>\r\n</div>\r\n<div>\r\n<h4>Blue and Infrared Light Therapy for Stretch Marks:</h4>\r\n</div>\r\n<div>\r\n<p>Blue and infrared light therapy devices can also be beneficial for reducing the appearance of stretch marks. Here\'s how they work [2]:</p>\r\n</div>\r\n<ul>\r\n<li>Enhancing Collagen Production: These therapies stimulate collagen production, which helps repair and regenerate the skin, making stretch marks less noticeable.</li>\r\n<li>Improving Skin Texture: Applying blue and infrared light can improve the texture and elasticity of the skin, reducing the appearance of stretch marks.</li>\r\n<li>Minimizing Discoloration: These therapies can help fade the red or purple color of newer stretch marks, making them less conspicuous.</li>\r\n</ul>\r\n<div>\r\n<h4>Skincare and Treatments</h4>\r\n</div>\r\n<div>\r\n<p>A strategic approach to skincare can mitigate the appearance of both cellulite and stretch marks [3]:</p>\r\n</div>\r\n<ul>\r\n<li>Retinoids: Promote collagen production and may improve the texture of skin affected by stretch marks.</li>\r\n<li>Moisturizers: Keeping the skin hydrated can improve its appearance and elasticity, making cellulite and stretch marks less noticeable.</li>\r\n</ul>\r\n<div>\r\n<h3>Conclusion</h3>\r\n</div>\r\n<div>\r\n<p>Improving the health of your skin can be achieved by combining personalized skincare with the benefits of blue and infrared light therapy. This approach can help reduce the appearance of cellulite and stretch marks while promoting vibrant and healthier skin. For the best results, it is important to select the right skincare products and use advanced technologies. Seeking professional advice is also crucial in addressing your specific skincare needs and concerns.</p>\r\n</div>\r\n<div>\r\n<p>-------------------------------------------</p>\r\n</div>\r\n<div>\r\n<p>References:</p>\r\n</div>\r\n<div>\r\n<p>[1]Avram, M. M. (2004). Cellulite: a review of its physiology and treatment. Journal of Cosmetic and Laser Therapy, 6(4), 181-185.</p>\r\n</div>\r\n<div>\r\n<p>[2] Hexsel, D., Orlandi, C., &amp; Zechmeister-Prado, D. (2011). Current status of carboxytherapy and radiofrequency techniques for treatment of cellulite. Dermatologic Surgery, 37(5), 597-609.</p>\r\n</div>\r\n<div>\r\n<p>[3]Lupo, M. P. (2002). Effectively treating cellulite. Cutis, 69(4), 18-24.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 8, '0', '2023-12-17 10:11:27', 'post_1702825888.png', '1'),
(17, 'Redness &amp; Rosacea', '<div>\r\n<div>\r\n<h3>Combating Redness and rosacea with Advanced Skincare and Light Therapy</h3>\r\n<p>Redness and rosacea are common skin concerns that can be both bothersome and challenging to manage. However, with scientific advancements in skincare products and light therapy, individuals can find effective solutions to soothe their skin and reduce flare-ups. Here&rsquo;s an in-depth look at these innovative treatments and how they can be integrated into daily skincare routines.</p>\r\n<div>\r\n<div>\r\n<h4>Understanding Redness and Rosacea</h4>\r\n</div>\r\n<div>\r\n<p>Rosacea is a chronic skin condition characterized by facial Redness, swelling, and small, red, pus-filled bumps. For those grappling with rosacea, the proper skincare routine and advanced treatments like light therapy can offer substantial relief and improve skin appearance.</p>\r\n</div>\r\n<div>\r\n<h4>The Underlying Factors of Redness and Rosacea</h4>\r\n</div>\r\n<div>\r\n<p>Rosacea is a complex condition believed to be caused by a combination of hereditary and environmental factors. The skin&rsquo;s inflammatory response to these factors leads to the visible symptoms of rosacea.</p>\r\n</div>\r\n<div>\r\n<h4>Skincare Product Integration</h4>\r\n</div>\r\n<div>\r\n<p>Effective skincare can provide comfort and improve the skin&rsquo;s condition [1]:</p>\r\n</div>\r\n<ul>\r\n<li>Gentle Cleansers: Use mild, non-irritating cleansers that do not strip the skin of its natural oils, which can exacerbate Redness.</li>\r\n<li>Moisturizers with Niacinamide: This ingredient can improve the skin&rsquo;s barrier function, reduce inflammation, and decrease Redness.</li>\r\n<li>Sun Protection: Daily use of a broad-spectrum sunscreen is crucial as UV radiation can trigger rosacea flare-ups.</li>\r\n</ul>\r\n<div>\r\n<h4>Enhancing Rosacea Treatment with Light Therapy</h4>\r\n</div>\r\n<div>\r\n<p>Infrared and blue light therapies have emerged as innovative treatments for a range of skin conditions, including the persistent redness and inflammation associated with rosacea. Here\'s a closer look at how these therapies work and how they can be effectively utilized in managing redness and rosacea.</p>\r\n</div>\r\n<div>\r\n<h5><strong>Blue Light Therapy: Calming Inflammation and Bacteria</strong></h5>\r\n</div>\r\n<ul>\r\n<li>Antimicrobial Action: Blue light therapy has been noted for its ability to destroy bacteria. While the role of bacteria in rosacea isn\'t fully understood, reducing skin bacteria can lead to a decrease in skin inflammation and redness [2].</li>\r\n<li>Inflammation Reduction: Blue light can help to modulate the immune response that contributes to the inflammation seen in rosacea [3].</li>\r\n</ul>\r\n<div>\r\n<h5><strong>Integrating Light Therapy Into Rosacea Management</strong></h5>\r\n</div>\r\n<ol>\r\n<li>Consistent Use: Regular light therapy sessions, as a dermatologist recommends, can offer cumulative benefits for rosacea sufferers.</li>\r\n<li>Tailored Protocols: Depending on individual symptoms, a dermatologist may recommend starting with blue light therapy to address the superficial aspects of rosacea, such as inflammation and bacterial overgrowth.</li>\r\n<li>Complementary Approach: Light therapy is most effective in a comprehensive treatment plan, including gentle skin care, prescription medications if needed, and lifestyle modifications to avoid known rosacea triggers.</li>\r\n</ol>\r\n<div>\r\n<h3>Conclusion</h3>\r\n</div>\r\n<div>\r\n<p>Rosacea and persistent Redness need not diminish your confidence or comfort. Through a dedicated skincare regime and the strategic use of light therapy, it&rsquo;s possible to manage these conditions effectively. Remember to consult with your dermatologist before beginning any new treatment, and be patient with your skin &ndash; as with any regimen, it takes time to see results.</p>\r\n</div>\r\n<div>\r\n<p>-------------------------------------------</p>\r\n</div>\r\n<div>\r\n<p>References:</p>\r\n</div>\r\n<div>\r\n<p>[1] Levin, J., &amp; Momin, S. B. (2010). How much do we really know about our favorite cosmeceutical ingredients? The Journal of clinical and aesthetic dermatology, 3(2), 22&ndash;41.</p>\r\n</div>\r\n<div>\r\n<p>[2] Enwemeka, C. S., Williams, D., Enwemeka, S. K., Hollosi, S., &amp; Yens, D. (2009). Blue light reduces bacterial load and promotes wound healing in an in vitro model of superficial Staphylococcus aureus contaminated wounds. Photomedicine and Laser Surgery, 27(2), 309-312.</p>\r\n</div>\r\n<div>\r\n<p>[3] Ball, A., Hoare, J. I., Lemon, K., Hobbs, G., Mason, T., &amp; Greenman, J. (2013). Blue light differentially inhibits bacterial growth, influencing both viability and biomass. Photochemical &amp; Photobiological Sciences, 12(9), 1687-1692.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 7, '0', '2023-12-17 10:13:13', 'post_1702825993.png', '1');
INSERT INTO `posts` (`post_id`, `post_title`, `post_description`, `post_tag`, `post_featured`, `post_date`, `post_image`, `post_status`) VALUES
(18, 'Pain Management', '<div>\r\n<div>\r\n<h3>The Science and Serenity of Light Therapy for Pain</h3>\r\n<p>Pain, at its essence, is the body\'s urgent telegram, signaling when something is awry. Whether due to injury, strain, or chronic conditions, it\'s the language our body speaks to grab our attention and prompt care. In the United States, a chorus of discomfort echoes, with millions voicing the daily struggles of managing pain&mdash;joint pain and arthritis being among the common culprits.</p>\r\n<div>\r\n<div>\r\n<h3>The Pervasive Plight of Pain</h3>\r\n</div>\r\n<div>\r\n<p>The prevalence of pain, particularly joint pain and arthritis, is a testament to its impact on American wellness. Arthritis alone stands as a sentinel of suffering, affecting an estimated 54 million adults. It\'s not merely a statistic; it\'s a collection of individual stories of struggle with swelling, stiffness, and the frustration of diminished mobility.</p>\r\n</div>\r\n<div>\r\n<p>Chronic pain, extending beyond arthritis, casts a long shadow over lives, often curtailing the joy of daily activities and posing a threat to mental health. The concerns escalate with the potential side effects and dependency associated with traditional pharmaceutical interventions.</p>\r\n</div>\r\n<div>\r\n<h4>The Luminous Path to Pain Management</h4>\r\n</div>\r\n<div>\r\n<p>In the quest for gentle yet effective pain relief, light therapy emerges as a beacon of hope. Let\'s illuminate how particularly focusing on infrared light therapy.</p>\r\n</div>\r\n<div>\r\n<h4>Infrared Light Therapy: A Warm Embrace for Aching Joints</h4>\r\n</div>\r\n<div>\r\n<p>Infrared light therapy, also known as photobiomodulation, has been researched and embraced for its potential to ease pain and aid healing. The science behind it is as fascinating as it is promising. When infrared light is applied to the skin, it penetrates with gentle warmth, reaching deep into tissues, muscles, and even bones.</p>\r\n</div>\r\n<div>\r\n<p>The effects at a cellular level are profound. Infrared light is thought to stimulate the mitochondria, the powerhouses within our cells, enhancing the production of adenosine triphosphate (ATP) &ndash; the energy currency of the cell [1 &amp; 3]. This boost in ATP production may support the body\'s natural healing processes, reducing inflammation and relieving pain.</p>\r\n</div>\r\n<div>\r\n<p>Moreover, research suggests that infrared therapy can lead to an increase in circulation, promoting the supply of oxygen and nutrients to the joint tissue, aiding in repair, and soothing pain [2].</p>\r\n</div>\r\n<div>\r\n<h4>Blue Light Therapy: A Cool Soothing for Chronic Aches</h4>\r\n</div>\r\n<div>\r\n<p>Not to be outshone, blue light therapy also plays a unique role in managing pain. Though its penetration is more superficial compared to infrared, blue light has been identified for its anti-inflammatory properties [4]. It\'s particularly noted for its bacteria-killing ability, which can be a boon for skin health, potentially reducing the risk of inflammation that can exacerbate pain conditions.</p>\r\n</div>\r\n<div>\r\n<h4>Integrating Light Therapy into Your Daily Routine</h4>\r\n</div>\r\n<div>\r\n<p>Our innovative light therapy devices are designed to blend seamlessly into your life:</p>\r\n</div>\r\n<ul>\r\n<li>Start with 10-15 minutes of infrared light therapy, ideally before your day begins. The warmth can help to limber joints and alleviate stiffness.</li>\r\n<li>Integrate short sessions of blue light therapy into your skincare routine to manage skin conditions that may impact your overall sense of well-being.</li>\r\n<li>Conclude your day with another session of infrared light therapy to relax any tension built up from the day\'s activities and to promote better sleep, which is vital for recovery and pain management.</li>\r\n</ul>\r\n<div>\r\n<p>We understand that managing pain is a personal journey, and we stand by the science that lights the way. With references from respected publications and testimonials from those who\'ve embraced light therapy, we offer not just a product but a partnership in your pursuit of wellness.</p>\r\n</div>\r\n<div>\r\n<p>We invite you to experience the gentle, restorative power of light. Embrace a life illuminated by relief and rejuvenation, where every day holds the potential for a brighter, more comfortable tomorrow.</p>\r\n</div>\r\n<div>\r\n<p>-------------------------------------------</p>\r\n</div>\r\n<div>\r\n<p>References:</p>\r\n</div>\r\n<div>\r\n<p>1] Avci, P., Gupta, A., Sadasivam, M., Vecchio, D., Pam, Z., Pam, N., &amp; Hamblin, M. R. (2013). Low-level laser (light) therapy (LLLT) in skin: stimulating, healing, restoring. Seminars in Cutaneous Medicine and Surgery, 32(1), 41-52.</p>\r\n</div>\r\n<div>\r\n<p>[2] Brosseau, L., Robinson, V., Wells, G., Debie, R., Gam, A., Harman, K., ... &amp; Tugwell, P. (2005). Low level laser therapy (Classes I, II and III) for treating rheumatoid arthritis. Cochrane Database of Systematic Reviews, (4).</p>\r\n</div>\r\n<div>\r\n<p>[3] Hamblin, M. R. (2016). Shining light on the head: Photobiomodulation for brain disorders. BBA Clinical, 6, 113-124.</p>\r\n</div>\r\n<div>\r\n<p>[4] Liebmann, J., Born, M., &amp; Kolb-Bachofen, V. (2010). Blue light irradiation regulates proliferation and differentiation in human skin cells. Journal of Investigative Dermatology, 130(1), 259-269.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 8, '0', '2023-12-17 10:16:10', 'post_1702826170.png', '1'),
(19, 'Eczema &amp; Psoriasis', '<div>\r\n<div>\r\n<h3>Managing Eczema and Psoriasis with Advanced Skincare and Light Therapy</h3>\r\n<p>Eczema and psoriasis are persistent skin conditions that can cause discomfort and distress to those affected by them. Despite sharing some symptomatic similarities, they are distinctly different diseases that require specific management strategies. This article aims to demystify eczema and psoriasis, highlight the effectiveness of skin care products, and shed light on how blue and infrared therapies can be supportive when integrated into daily care routines.</p>\r\n</div>\r\n<div>\r\n<p>Living with eczema or psoriasis can be a daily challenge. However, recent advancements in dermatological treatments and light therapy are offering new hope for those seeking relief from these chronic conditions.</p>\r\n<div>\r\n<div>\r\n<h3>The Underlying Science of Eczema and Psoriasis</h3>\r\n</div>\r\n<div>\r\n<p>Eczema, also known as atopic dermatitis, is characterized by dry, itchy, and inflamed skin. It\'s often associated with an overactive immune response to environmental triggers. Psoriasis, on the contrary, is an autoimmune condition that leads to the rapid buildup of skin cells, resulting in scaling and inflammation [1].</p>\r\n</div>\r\n<div>\r\n<h4>Skincare products can significantly improve the symptoms of eczema and psoriasis[2]:</h4>\r\n</div>\r\n<ul>\r\n<li>Moisturizers: Products with ceramides and hyaluronic acid are crucial for maintaining skin hydration and barrier function.</li>\r\n<li>Vitamin C: is an antioxidant that can help with inflammation and promote collagen production, potentially aiding in the skin repair process.</li>\r\n<li>Peptides: Small chains of amino acids that signal the skin to produce collagen and strengthen the skin barrier, which is beneficial for both conditions[3].</li>\r\n</ul>\r\n<div>\r\n<h4>The role of light therapy</h4>\r\n</div>\r\n<div>\r\n<p>The role of light therapy in treating skin conditions like eczema and psoriasis has garnered significant interest in the dermatological community due to its non-invasive nature and potential to reduce inflammation and improve skin health.</p>\r\n</div>\r\n<div>\r\n<p>The Efficacy of Blue and Infrared Light Therapy in Eczema and Psoriasis Treatment</p>\r\n</div>\r\n<div>\r\n<p>Managing eczema and psoriasis involves not only topical treatments but also looking beyond conventional methods to innovative therapies like blue and infrared light.</p>\r\n</div>\r\n<div>\r\n<h5>Blue Light Therapy: A Beacon for Eczema Relief</h5>\r\n</div>\r\n<div>\r\n<p>Blue light therapy operates at wavelengths known to have antibacterial effects, which is particularly useful for eczema that skin infections can complicate. It is also thought to help modulate the immune system response, which can be overactive in eczema sufferers.</p>\r\n</div>\r\n<ul>\r\n<li>Immune Modulation: Blue light can help reduce the activity of the immune system in the skin, thus decreasing the inflammatory response that causes the redness and itching associated with eczema [4]</li>\r\n<li>Bacterial Load Reduction: It can aid in diminishing the colonization of bacteria like Staphylococcus aureus, which often exacerbates eczema symptoms [5].</li>\r\n</ul>\r\n<div>\r\n<h5>Infrared Light Therapy: The Healing Warmth for Psoriasis</h5>\r\n</div>\r\n<div>\r\n<p>Infrared light therapy involves using wavelengths that penetrate deeper into the skin, potentially affecting the underlying cells and blood vessels.</p>\r\n</div>\r\n<ul>\r\n<li>Promoting Circulation: The warmth of infrared light is thought to increase blood flow, which can nourish the skin and remove toxins, providing a conducive environment for healing psoriatic lesions [6].</li>\r\n<li>Cellular Metabolism: Infrared therapy may boost the metabolism of skin cells, leading to faster turnover and reducing the scale buildup characteristic of psoriasis [7]</li>\r\n</ul>\r\n<div>\r\n<h4>Integrating Light Therapy into Your Skincare Routine</h4>\r\n</div>\r\n<div>\r\n<p>For eczema:</p>\r\n</div>\r\n<ul>\r\n<li>Blue Light in the Morning: After moisturizing, a session of blue light therapy can help reduce skin inflammation and combat bacterial growth throughout the day.</li>\r\n</ul>\r\n<div>\r\n<p>For psoriasis:</p>\r\n</div>\r\n<ul>\r\n<li>Infrared Light in the Evening: Following the application of topical treatments, infrared light therapy can be used to enhance the skin\'s healing process overnight.</li>\r\n</ul>\r\n<div>\r\n<h3>Conclusion</h3>\r\n</div>\r\n<div>\r\n<p>Understanding and living with eczema and psoriasis can be challenging, but with a disciplined skincare regimen and the judicious use of light therapy, symptom control is achievable. Embracing these therapeutic options can help to soothe skin, reduce flare-ups, and improve the quality of life. Remember, consulting with a healthcare provider before starting any new treatment is crucial, especially for chronic conditions like eczema and psoriasis.</p>\r\n</div>\r\n<div>\r\n<p>-------------------------------------------</p>\r\n</div>\r\n<div>\r\n<p>References:</p>\r\n</div>\r\n<div>\r\n<p>[1] Boehncke, W.-H., &amp; Sch&ouml;n, M. P. (2015). Psoriasis. Lancet, 386(9997), 983&ndash;994.</p>\r\n</div>\r\n<div>\r\n<p>[2] Gorouhi, F., &amp; Maibach, H. I. (2009). Role of topical peptides in preventing or treating aged skin. International Journal of Cosmetic Science, 31(5), 327-345.</p>\r\n</div>\r\n<div>\r\n<p>[3] Pullar, J. M., Carr, A. C., &amp; Vissers, M. (2017). The Roles of Vitamin C in Skin Health. Nutrients, 9(8), 866.</p>\r\n</div>\r\n<div>\r\n<p>[4] Fikrle, T., &amp; Posp&iacute;&scaron;ilov&aacute;, K. (2013). Blue Light Phototherapy in the Treatment of Acne. Prague Medical Report, 114(4), 222-227.</p>\r\n</div>\r\n<div>\r\n<p>[5] Dai, T., Gupta, A., Murray, C. K., Vrahas, M. S., Tegos, G. P., &amp; Hamblin, M. R. (2012). Blue light for infectious diseases: Propionibacterium acnes, Helicobacter pylori, and beyond? Drug Resistance Updates, 15(4), 223-236.</p>\r\n</div>\r\n<div>\r\n<p>[6] Avci, P., Gupta, A., Sadasivam, M., Vecchio, D., Pam, Z., Pam, N., &amp; Hamblin, M. R. (2013). Low-level laser (light) therapy (LLLT) in skin: stimulating, healing, restoring. Seminars in Cutaneous Medicine and Surgery, 32(1), 41-52.</p>\r\n</div>\r\n<div>\r\n<p>[7] Kleinpenning, M. M., Smits, T., Frunt, M. H., van Erp, P. E., van de Kerkhof, P. C., &amp; Gerritsen, M. J. (2010). Effects of blue light on the fast component of microvascular reactivity in patients with psoriasis. Photodermatology, Photoimmunology &amp; Photomedicine, 26(3), 138-144.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 7, '0', '2023-12-17 10:17:43', 'post_1702826263.png', '1'),
(20, 'Fine lines &amp; Wrinkles', '<div>\r\n<div>\r\n<p>Fine lines and wrinkles are common signs of aging that many wish to delay or minimize. Although they are a natural part of the aging process, it is essential to understand their causes, symptoms, and the role of skincare products in addressing them. In this article, we will explore the medical and wellness perspective of fine lines and wrinkles, shedding light on their origins, characteristics, and how skin care products can help combat these skin concerns.</p>\r\n<div>\r\n<div>\r\n<h3>The Genesis of Fine Lines and Wrinkles</h3>\r\n</div>\r\n<div>\r\n<p>The inception of fine lines and wrinkles is a complex interplay of intrinsic aging and environmental factors [1]:</p>\r\n</div>\r\n<ul>\r\n<li>Collagen and Elastin Breakdown: As the skin ages, the production of collagen and elastin&mdash;proteins that provide structure and elasticity&mdash;naturally decreases.</li>\r\n<li>Cellular Changes: The natural lifecycle of skin cells slows, leading to a decrease in the skin&rsquo;s ability to repair and renew itself.</li>\r\n<li>Environmental Assault: Sun exposure, pollution, and lifestyle choices (like smoking) exacerbate the breakdown of the skin&rsquo;s supportive structure, accelerating the aging process.</li>\r\n</ul>\r\n<div>\r\n<h4>Skincare Products in the Fight Against Fine Lines and Wrinkles</h4>\r\n</div>\r\n<div>\r\n<p>Targeted skincare products contain active ingredients such as retinoids, peptides, and antioxidants, which are scientifically proven to support the skin\'s regenerative processes and combat the signs of aging [2].</p>\r\n</div>\r\n<ul>\r\n<li>Retinoids: Vitamin A derivatives that stimulate cell turnover and collagen synthesis.</li>\r\n<li>Peptides: Small proteins that signal the skin to produce more collagen.</li>\r\n<li>Antioxidants: Compounds like vitamin C that neutralize free radicals, preventing further skin damage.</li>\r\n</ul>\r\n<div>\r\n<h4>Efficacy of Blue and Infrared Light Therapy</h4>\r\n</div>\r\n<div>\r\n<p>Light therapy emerges as a beacon of hope in the sea of anti-aging treatments [3]:</p>\r\n</div>\r\n<ul>\r\n<li>Blue Light Therapy: While primarily used for acne treatment due to its antibacterial effects, blue light also possesses qualities that can improve the overall texture and quality of the skin, reducing puffy eyes and dark circles.</li>\r\n<li>Infrared Light Therapy: A deeper dive into the skin\'s layers reveals that infrared light can stimulate collagen production, which is critical for filling in and smoothing fine lines and wrinkles.</li>\r\n</ul>\r\n<div>\r\n<h4>Benefits and Integration into Daily Routines</h4>\r\n</div>\r\n<div>\r\n<p>The incorporation of blue and infrared light therapies into daily skin care routines offers tangible benefits:</p>\r\n</div>\r\n<ul>\r\n<li>Stimulates Collagen Production: This leads to a reduction in the appearance of fine lines and wrinkles.</li>\r\n<li>Improves Skin Texture: Results in smoother, firmer skin over time.</li>\r\n<li>Increases Circulation: Promotes a healthy glow and better skin health overall.</li>\r\n</ul>\r\n<div>\r\n<h4>Seamless Integration</h4>\r\n</div>\r\n<div>\r\n<p>Melding light therapy into your skincare regimen could look something like this:</p>\r\n</div>\r\n<ol>\r\n<li>Morning: Apply a vitamin-C serum followed by a blue light therapy session to energize and protect your skin throughout the day.</li>\r\n<li>Evening: Post-cleansing, engage in an infrared light therapy session to support skin repair and collagen production, followed by the application of a retinoid cream to enhance cellular turnover while you sleep.</li>\r\n</ol>\r\n<div>\r\n<p>In summary, the emergence of fine lines and wrinkles is an intricate ballet of biological processes and environmental factors, a ballet in which we are not mere spectators but active participants. Armed with a profound understanding of these processes, we are better equipped to select and apply interventions that do not merely mask the signs of aging but actively and scientifically work to restore the skin\'s intrinsic vitality.</p>\r\n</div>\r\n<div>\r\n<p>-------------------------------------------</p>\r\n</div>\r\n<div>\r\n<p>References:</p>\r\n</div>\r\n<div>\r\n<p>[1] Boswell, C. B., &amp; Rittie, L. (2017). Skin aging and photoaging: an overview. Journal of Investigative Dermatology Symposium Proceedings, 18(2), S25-S27.</p>\r\n</div>\r\n<div>\r\n<p>[2] Kafi, R., Kwak, H. S., Schumacher, W. E., Cho, S., Hanft, V. N., Hamilton, T. A., ... &amp; Kang, S. (2007). Improvement of naturally aged skin with vitamin A (retinol). Archives of Dermatology, 143(5), 606-612.</p>\r\n</div>\r\n<div>\r\n<p>[3] Wunsch, A., &amp; Matuschka, K. (2014). A Controlled Trial to Determine the Efficacy of Red and Near-Infrared Light Treatment in Patient Satisfaction, Reduction of Fine Lines, Wrinkles, Skin Roughness, and Intradermal Collagen Density Increase. Photomedicine and Laser Surgery, 32(2), 93-100.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 8, '', '2023-12-17 10:19:29', 'post_1702826369.png', '1'),
(21, 'Anti-aging', '<div>\r\n<div>\r\n<h3>Discover How Skincare Products Can Help You Stay Youthful and Radiant.</h3>\r\n</div>\r\n<div>\r\n<p><br />As we age, our skin tells the story of our life. But why do we age, and how do our biological clocks translate to visible signs? Understanding the science behind skin changes helps with better decisions and anti-aging treatments. This article delves into the medical and wellness perspective of aging, highlighting how it occurs, its symptoms, its causes, and how skincare products can be our trusted allies in the fight against aging signs.</p>\r\n<div>\r\n<div>\r\n<h3>Understanding the Aging Process:</h3>\r\n</div>\r\n<div>\r\n<p>Aging is of two types - intrinsic and extrinsic. Intrinsic aging is a natural process that occurs internally and is driven by genetics. Extrinsic aging, on the other hand, is mostly influenced by external factors such as UV rays, pollution, smoking, and an unhealthy diet. Both types can cause visible symptoms such as fine lines, wrinkles, and sagging skin.</p>\r\n</div>\r\n<div>\r\n<p>As we age, our skin, the largest organ of the body, undergoes distinct changes [1]:</p>\r\n</div>\r\n<ul>\r\n<li>Collagen Reduction: Collagen, the scaffolding of the skin, diminishes with age, leading to wrinkles and loss of plumpness.</li>\r\n<li>Elastin Degradation: Elastin fibers, which give skin its elastic quality, become less resilient, resulting in sagging.</li>\r\n<li>Cell Turnover Slows: The youthful process of shedding and renewing skin cells decelerates, causing dullness and uneven texture.</li>\r\n<li>Decreased Hydration: Natural moisturizing factors within the skin decrease, leading to dryness.</li>\r\n</ul>\r\n<div>\r\n<h3>The Role of Skincare:</h3>\r\n</div>\r\n<div>\r\n<p>The right skincare products can significantly aid in the battle against the visible signs of aging. Here\'s how they can make a difference:</p>\r\n</div>\r\n<ul>\r\n<li>Boost Collagen Production: Anti-aging serums often contain ingredients like retinol, peptides, and hyaluronic acid, which stimulate collagen production and reduce the appearance of wrinkles.</li>\r\n<li>Combat Hyperpigmentation: Skincare products with ingredients like vitamin C, niacinamide, and alpha hydroxy acids can fade age spots and even out skin tone.</li>\r\n<li>Enhance Skin Elasticity: Creams and serums enriched with antioxidants and peptides can improve skin firmness and elasticity.</li>\r\n</ul>\r\n<div>\r\n<h3>The Luminous Ally: Blue and Infrared Light Therapy</h3>\r\n</div>\r\n<div>\r\n<p>In recent years, infrared light therapy has gained popularity for its potential to combat the symptoms and causes of aging effectively. Infrared light, particularly in the near-infrared spectrum, has unique properties that make it an excellent tool for promoting skin rejuvenation and overall wellness [2].</p>\r\n</div>\r\n<ul>\r\n<li>Stimulates Collagen Production</li>\r\n<li>Reduces Inflammation</li>\r\n<li>Enhances Cell Regeneration</li>\r\n<li>Fades Age Spots</li>\r\n<li>Promotes Overall Wellness</li>\r\n</ul>\r\n<div>\r\n<h4>Incorporating Light Therapy into Your Daily Routine</h4>\r\n</div>\r\n<div>\r\n<p>Incorporating light therapy into your daily skincare routine can be seamless:</p>\r\n</div>\r\n<ol>\r\n<li>Cleanse: Start with a clean canvas by washing with water and mild soap.</li>\r\n<li>Light Therapy Session: Follow with a 3-5 minute light therapy session. Infrared for deep skin rejuvenation and blue for surface-level improvements.</li>\r\n<li>Skincare Products: Post-light therapy, apply your targeted anti-aging skincare products, as light therapy can increase their absorption and efficacy.</li>\r\n</ol>\r\n<div>\r\n<p>In conclusion, the passage of time need not dictate the vitality of your skin. Through the discerning application of science and the strategic use of light therapy, we can proactively influence our skin\'s aging narrative. It is a daily ritual of renewal, an investment in the cellular health and longevity of your most visible organ.</p>\r\n</div>\r\n<div>\r\n<p>Embrace the potential of blue and infrared light therapy as a cornerstone in your sophisticated skincare regimen. Envision the integration of these therapies as both a science and a luxury, a deliberate step toward preserving and enhancing your skin\'s natural resilience.</p>\r\n</div>\r\n<div>\r\n<p>-------------------------------------------</p>\r\n</div>\r\n<div>\r\n<p>References:</p>\r\n</div>\r\n<div>\r\n<p>[1] Farage, M. A., Miller, K. W., Elsner, P., &amp; Maibach, H. I. (2008). Intrinsic and extrinsic factors in skin ageing: a review. International Journal of Cosmetic Science, 30(2), 87-95.</p>\r\n</div>\r\n<div>\r\n<p>[2] Avci, P., Gupta, A., Sadasivam, M., Vecchio, D., Pam, Z., Pam, N., &amp; Hamblin, M. R. (2013). Low-level laser (light) therapy (LLLT) in skin: stimulating, healing, restoring. Seminars in Cutaneous Medicine and Surgery, 32(1), 41-52.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 8, '', '2023-12-17 10:22:00', 'post_1702826521.png', '1'),
(22, 'Collagen Production', '<div>\r\n<h3>Unveiling the Secrets of Collagen: A Journey with Infrared Light Therapy</h3>\r\n</div>\r\n<div>\r\n<p>Collagen, a protein abundantly found in our body, is the cornerstone of our skin\'s structure. It acts like the scaffold that maintains skin firmness and elasticity. Think of collagen as the bedrock of a youthful and radiant complexion.</p>\r\n<div>\r\n<div>\r\n<h4>Collagen Production:</h4>\r\n</div>\r\n<div>\r\n<p>As we age, our natural collagen production declines, leading to common signs of aging such as wrinkles, sagging skin, and a loss of firmness. This gradual decrease is a natural process, but lifestyle factors like sun exposure, smoking, and poor diet can accelerate it.</p>\r\n</div>\r\n<div>\r\n<h4>The Collagen Crisis: Understanding the Implications</h4>\r\n</div>\r\n<div>\r\n<p>The dwindling levels of collagen manifest not just in aesthetic changes, but also in decreased skin resilience and hydration. This reduction in collagen can impact our skin&rsquo;s overall health and appearance, making it more prone to damage and less capable of repair.</p>\r\n</div>\r\n<div>\r\n<h4>The Science Behind Infrared Light Therapy:</h4>\r\n</div>\r\n<div>\r\n<p>Infrared light therapy, a non-invasive marvel, works wonders in reinvigorating collagen production. Here\'s how:</p>\r\n</div>\r\n<ul>\r\n<li>Penetrating Deeply: Infrared light delves deep into the dermal layer, where collagen is produced.</li>\r\n<li>Stimulating Fibroblasts: It stimulates fibroblasts, the cells responsible for collagen synthesis.</li>\r\n<li>Enhancing Circulation: Improved blood flow brings more nutrients and oxygen to the skin, fostering a healthy environment for collagen production.</li>\r\n</ul>\r\n<div>\r\n<h4>How Infrared Light Boosts Collagen:</h4>\r\n</div>\r\n<div>\r\n<p>Studies have shown that when skin is exposed to infrared light, these fibroblasts kick into high gear, ramping up collagen production. This process, known as photobiomodulation, doesn\'t just increase collagen quantity but also improves its quality.</p>\r\n</div>\r\n<div>\r\n<h4>Conclusion:</h4>\r\n</div>\r\n<div>\r\n<p>Infrared light therapy is not just a trend; it\'s a scientifically-backed avenue to rejuvenate your skin\'s health from within. By embracing this innovative technology, you\'re not just purchasing a product; you\'re investing in a long-term ally for your skin\'s vitality and youthfulness.</p>\r\n</div>\r\n<div>\r\n<p>-------------------------------------------</p>\r\n</div>\r\n<div>\r\n<p>References:</p>\r\n</div>\r\n<ul>\r\n<li>[1] Avci, P., Gupta, A., Sadasivam, M., Vecchio, D., Pam, Z., Pam, N., &amp; Hamblin, M. R. (2013). \"Low-Level Laser (Light) Therapy (LLLT) in Skin: Stimulating, Healing, Restoring.\" Seminars in Cutaneous Medicine and Surgery. This study discusses the mechanisms of low-level laser therapy (LLLT), a form of light therapy that includes infrared light, in skin rejuvenation, including its role in stimulating collagen production.</li>\r\n<li>[2] Russell, B. A., Kellett, N., &amp; Reilly, L. R. (2005). \"A study to determine the efficacy of combination LED light therapy (633 nm and 830 nm) in facial skin rejuvenation.\" Journal of Cosmetic and Laser Therapy. This research evaluates the effectiveness of combined 633 nm (red) and 830 nm (infrared) LED light therapy in facial skin rejuvenation, noting improvements in skin texture and collagen density.</li>\r\n<li>[3] Schroeder, P., Lademann, J., Darvin, M. E., Stege, H., Marks, C., Bruhnke, S., &amp; Krutmann, J. (2008). \"Infrared Radiation-Induced Matrix Metalloproteinase in Human Skin: Implications for Protection.\" Journal of Investigative Dermatology. This article explores the impact of infrared radiation on skin aging, particularly the induction of matrix metalloproteinases which are involved in collagen breakdown, providing a rationale for protective strategies against infrared radiation.</li>\r\n<li>[4] Wunsch, A., &amp; Matuschka, K. (2014). \"A Controlled Trial to Determine the Efficacy of Red and Near-Infrared Light Treatment in Patient Satisfaction, Reduction of Fine Lines, Wrinkles, Skin Roughness, and Intradermal Collagen Density Increase.\" Photomedicine and Laser Surgery. This controlled trial demonstrates the efficacy of red and near-infrared light in improving skin texture, reducing wrinkles, and increasing collagen density.</li>\r\n</ul>\r\n</div>\r\n</div>', 8, '', '2023-12-17 10:23:57', 'post_1702826638.png', '1'),
(23, 'Hair Loss', '<div>\r\n<div>\r\n<h3>The Revolutionary Role of Blue and Infrared Light Therapy in Your Hair Care Routine</h3>\r\n</div>\r\n<div>\r\n<p>Hair loss: it\'s a condition that can affect anyone, regardless of age or gender. From a wellness standpoint, a full head of hair is often associated with health and vitality, making hair loss a distressing experience for many. Scientifically, hair loss, or alopecia, can be the result of genetic factors, hormonal changes, medical conditions, or even certain medications.</p>\r\n</div>\r\n<div>\r\n<p>It\'s not just about vanity; hair loss can significantly impact an individual\'s psychological well-being, leading to decreased self-esteem and, in severe cases, anxiety or depression.</p>\r\n<div>\r\n<div>\r\n<h4>Light therapy</h4>\r\n</div>\r\n<div>\r\n<p>When it comes to addressing hair loss, blue and infrared light therapy have emerged as groundbreaking solutions, offering a non-invasive and chemical-free alternative to traditional treatments.</p>\r\n</div>\r\n<div>\r\n<h4>How does it work?</h4>\r\n</div>\r\n<ul>\r\n<li>Infrared light therapy: Infrared light therapy operates at wavelengths that penetrate deep into the skin, reaching the hair follicles. This light energy is absorbed by the cells and converted into cellular energy (ATP). One of the leading theories is that this energy boost enhances blood circulation in the scalp, stimulating hair growth by bringing more nutrients and oxygen to hair follicles. Moreover, infrared light is believed to activate stem cells in the hair region, promoting the anagen phase of hair growth, where follicles are active. In a study published in the journal \'Lasers in Medical Science\' (2013), low-level light therapy (LLLT) using a laser comb was shown to be effective in stimulating hair growth in both men and women with androgenetic alopecia.</li>\r\n<li>Blue light therapy: Blue light therapy, on the other hand, is renowned for its antibacterial properties. While not directly stimulating hair growth, it can improve scalp health by targeting the P. acnes bacteria that can cause inflammation and potentially contribute to hair loss. A healthier scalp environment is conducive to better hair growth, making blue light therapy a supportive treatment.</li>\r\n</ul>\r\n<div>\r\n<h4>Integrating Light Therapy into your routine</h4>\r\n</div>\r\n<div>\r\n<p>Now that we understand the science, how can you integrate these therapies into your daily routine? It\'s simple and relaxing. Our range of blue and infrared light therapy devices are designed for easy use. For those experiencing hair loss, a daily session of 15-20 minutes with our infrared light therapy cap can become a soothing part of your morning or evening routine. Meanwhile, our handheld blue light device can be used two to three times a week, gliding over the scalp to create a healthier environment for hair to thrive.</p>\r\n</div>\r\n<div>\r\n<h4>Conclusion:</h4>\r\n</div>\r\n<div>\r\n<p>Consistency is key with light therapy. While it\'s not an overnight solution, regular use has been proven to improve hair density and promote growth over time. Each session is a step towards not just restoring your hair but also reclaiming the confidence that comes with it.</p>\r\n</div>\r\n<div>\r\n<p>-------------------------------------------</p>\r\n</div>\r\n<div>\r\n<p>References:</p>\r\n</div>\r\n<div>\r\n<p>[1] \"Effect of low-level laser therapy on hair growth and other related parameters in patients with androgenetic alopecia: a randomized, double-blind, sham device-controlled multicenter trial.\" (Lasers in Medical Science, 2013).</p>\r\n</div>\r\n<div>\r\n<p>[2] \"The use of low-level light for hair growth: part I.\" (Journal of Cosmetic and Laser Therapy, 2014).</p>\r\n</div>\r\n<div>\r\n<p>[3] \"Low-level laser (light) therapy (LLLT) for treatment of hair loss.\" (Lasers in Surgical Medicine, 2014).</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 8, '', '2023-12-17 10:30:13', 'post_1702827013.png', '1'),
(24, 'Weight Loss', '<div>\r\n<div>\r\n<h3>Shedding Light on Weight Loss: How Infrared Therapy Complements Your Journey</h3>\r\n</div>\r\n<div>\r\n<p>Embarking on a weight loss journey is a path to a healthier you. It\'s about balancing calorie intake and energy expenditure, fostering a healthier relationship with food, and nurturing your body with exercise and care. But did you know that technological advances provide new tools to assist you on this journey? Enter the realm of blue and infrared light therapy&mdash;a radiant complement to traditional weight loss methods.</p>\r\n<div>\r\n<div>\r\n<h4>Understanding Weight Loss</h4>\r\n</div>\r\n<div>\r\n<p>Weight loss, in its essence, involves reducing the overall body mass, typically with a focus on losing fat. It\'s not just about the numbers on the scale; it\'s about improving your overall health, enhancing your physical function, and reducing the risks associated with excess weight, such as heart disease, diabetes, and joint pain.</p>\r\n</div>\r\n<div>\r\n<h4>The Main Concerns with Weight Loss</h4>\r\n</div>\r\n<div>\r\n<p>While the concept sounds straightforward&mdash;burn more calories than you consume&mdash;the reality is often more complex. Challenges include:</p>\r\n</div>\r\n<ul>\r\n<li>Plateaus: Sometimes, weight loss stalls, and it becomes harder to lose more weight.</li>\r\n<li>Muscle Loss: It\'s important to maintain muscle while losing fat for overall health and metabolism.</li>\r\n<li>Lifestyle Changes: Long-term success in weight loss often requires sustainable lifestyle changes, which can be challenging to implement and maintain.</li>\r\n</ul>\r\n<div>\r\n<h3>The Role of Infrared Light Therapy in Weight Management</h3>\r\n</div>\r\n<div>\r\n<p>Infrared light therapy is not a magic bullet, but it can be a valuable part of a weight loss strategy. Here\'s how it aids in the weight loss process:</p>\r\n</div>\r\n<ul>\r\n<li>Enhancing Metabolic Function</li>\r\n</ul>\r\n<div>\r\n<p>Infrared therapy has been found to improve the health of mitochondria, the energy powerhouses within our cells. This can lead to an increase in metabolic rate and potentially more calories burned [1].</p>\r\n</div>\r\n<ul>\r\n<li>Increasing Circulation</li>\r\n</ul>\r\n<div>\r\n<p>Improved blood flow can help deliver oxygen and nutrients more effectively to muscles during exercise, potentially increasing exercise capacity and facilitating more effective workouts [2].</p>\r\n</div>\r\n<ul>\r\n<li>Recovery and Pain Reduction</li>\r\n</ul>\r\n<div>\r\n<p>Post-exercise recovery is crucial in a weight loss regimen. Infrared therapy can reduce muscle fatigue and soreness, making it easier to stick to workout routines [3].</p>\r\n</div>\r\n<ul>\r\n<li>Reducing Visceral Fat</li>\r\n</ul>\r\n<div>\r\n<p>Some studies suggest that infrared light, especially at specific wavelengths, can help reduce visceral fat, which is the fat stored around the abdomen and associated with numerous health risks [3].</p>\r\n</div>\r\n<div>\r\n<h3>Integrating Light Therapy into Your Weight Loss Plan</h3>\r\n</div>\r\n<div>\r\n<p>Infrared light therapy can be seamlessly integrated into your weight loss routine. Here\'s how to make the most out of this technology:</p>\r\n</div>\r\n<ol>\r\n<li>Pre-Workout: A session before exercising can warm up the muscles and increase flexibility, potentially reducing the risk of injury.</li>\r\n<li>Post-Workout: Using infrared therapy after a workout may support muscle recovery and reduce inflammation.</li>\r\n<li>Consistency: Regular treatments can compound benefits, especially when combined with a healthy diet and regular exercise.</li>\r\n</ol>\r\n<div>\r\n<h3>Conclusion</h3>\r\n</div>\r\n<div>\r\n<p>Weight loss is a complex process, but incorporating infrared light therapy can offer additional support to your efforts. As with any health-related tool, it\'s important to combine this therapy with a balanced diet and regular physical activity. Embrace the glow of health with every beam of light&mdash;your body will thank you.</p>\r\n</div>\r\n<div>\r\n<p>-------------------------------------------</p>\r\n</div>\r\n<div>\r\n<p>References:</p>\r\n</div>\r\n<div>\r\n<p>[1] Hamblin, M. R. (2017). \"Mechanisms and applications of the anti-inflammatory effects of photobiomodulation.\" AIMS Biophysics, 4(3), 337&ndash;361.</p>\r\n</div>\r\n<div>\r\n<p>[2] Ferraresi, C., Kaippert, B., Avci, P., Huang, Y.Y., de Sousa, M.V.P., Bagnato, V.S., Parizotto, N.A., &amp; Hamblin, M.R. (2015). \"Low-level laser (light) therapy (LLLT) on muscle tissue: performance, fatigue and repair benefited by the power of light.\" Photonics &amp; Lasers in Medicine.</p>\r\n</div>\r\n<div>\r\n<p>[3] Sasaki, A., Calderon, A., &amp; Sato, S. (2016). \"The impact of non-thermal light therapy on fat reduction and body contouring.\" Laser Therapy, 25(1), 25-33.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 8, '', '2023-12-17 10:32:41', 'post_1702827162.png', '1'),
(25, 'Inflammation', '<div>\r\n<div>\r\n<h3>Unraveling the Intricacies of Inflammation and the Healing Powers of Light Therapy</h3>\r\n</div>\r\n<div>\r\n<h4>What is Inflammation?</h4>\r\n</div>\r\n<div>\r\n<p>In the journey to understanding our body\'s natural responses, inflammation often comes up as a familiar term. Simply put, inflammation is our body\'s innate immune response to foreign invaders, injuries, or toxins. Think of it as the body\'s effort to protect itself, aiming to remove harmful stimuli and initiate the healing process.</p>\r\n<div>\r\n<div>\r\n<h4>The Causes of Inflammation</h4>\r\n</div>\r\n<div>\r\n<p>This protective mechanism can be triggered by various factors, including:</p>\r\n</div>\r\n<ul>\r\n<li>Pathogens (like bacteria or viruses)</li>\r\n<li>Physical injuries (such as cuts or blows)</li>\r\n<li>Foreign objects (like splinters)</li>\r\n<li>Chemical irritants</li>\r\n<li>Chronic stress</li>\r\n<li>Unhealthy diets</li>\r\n<li>Lack of exercise</li>\r\n<li>Age-related wear and tear</li>\r\n</ul>\r\n<div>\r\n<h4>The Concerns Associated with Inflammation</h4>\r\n</div>\r\n<div>\r\n<p>While acute inflammation is beneficial, chronic inflammation can become a foe. When inflammation persists, it can contribute to a host of health issues, including arthritis, heart disease, diabetes, and even certain cancers. Symptoms of undue inflammation include redness, swelling, heat, pain, and loss of function in the affected area.</p>\r\n</div>\r\n<div>\r\n<h4>The Role of Infrared Light Therapy in Combating Inflammation</h4>\r\n</div>\r\n<div>\r\n<p>Enter the innovative world of infrared light therapy &ndash; a groundbreaking approach to easing inflammation. This treatment, also known as photobiomodulation, utilizes specific wavelengths of light to penetrate the skin and interact with tissues at the cellular level.</p>\r\n</div>\r\n<div>\r\n<h4>The Scientific Breakdown:</h4>\r\n</div>\r\n<ol>\r\n<li>Boosting Circulation: Infrared light encourages vasodilation, which enhances blood flow to inflamed areas, delivering oxygen and nutrients that support healing (Harvard Health Publishing, 2021).</li>\r\n<li>Cellular Metabolism Kickstart: It increases the activity of mitochondria, the powerhouses of our cells, thus accelerating the repair process [1].</li>\r\n<li>Reducing Oxidative Stress: By modifying the oxidative environment, infrared therapy helps in reducing the cellular damage that contributes to inflammation [2].</li>\r\n<li>Alleviating Pain: It can provide pain relief, which is often a result of prolonged inflammation, by reducing swelling and blocking pain signals [3].</li>\r\n</ol>\r\n<div>\r\n<h4>Clinical Evidence:</h4>\r\n</div>\r\n<div>\r\n<p>Research has bolstered the efficacy of infrared therapy. For instance, a study in the Journal of Photochemistry and Photobiology indicates significant improvements in patients with inflammatory conditions following consistent use of infrared therapy [4].</p>\r\n</div>\r\n<div>\r\n<p>Incorporating Infrared Light Therapy into Your Anti-Inflammatory Routine</p>\r\n</div>\r\n<div>\r\n<h4>Adopting infrared light therapy into your wellness routine can be both soothing and effective:</h4>\r\n</div>\r\n<ol>\r\n<li>Consult with Experts: Always begin with advice from a healthcare provider to see if light therapy is appropriate for your condition.</li>\r\n<li>Consistency is Key: Regular sessions, often recommended by professionals, may provide cumulative benefits.</li>\r\n<li>Time for Therapy: Each session, ranging from 15 to 30 minutes, can become a tranquil experience, a respite in your day.</li>\r\n<li>Post-Therapy Practices: Combining therapy with a healthy lifestyle, including diet and exercise, can amplify benefits.</li>\r\n</ol>\r\n<div>\r\n<h3>Conclusion</h3>\r\n</div>\r\n<div>\r\n<p>Inflammation doesn\'t have to be a constant battle. With the science-backed approach of infrared light therapy, you\'re equipped with a powerful ally in maintaining your health and well-being. By delving into the light, you may just find the soothing relief and healing your body craves.</p>\r\n</div>\r\n<div>\r\n<p>To explore how our cutting-edge skincare and light therapy products can complement your anti-inflammatory regimen, visit us online or reach out for personalized advice. Let\'s illuminate your path to wellness together.</p>\r\n</div>\r\n<div>\r\n<p>-------------------------------------------</p>\r\n</div>\r\n<div>\r\n<p>References:</p>\r\n</div>\r\n<div>\r\n<p>[1] Harvard Health Publishing. (2021). \"Can light therapy help with inflammation?\" Harvard Medical School.</p>\r\n</div>\r\n<div>\r\n<p>[2] Hamblin, M. R. (2017). \"Mechanisms and Mitochondrial Redox Signaling in Photobiomodulation.\" Photochemistry and Photobiology.</p>\r\n</div>\r\n<div>\r\n<p>[3] Ferraresi, C., Hamblin, M. R., &amp; Parizotto, N. A. (2015). \"Low-level laser (light) therapy (LLLT) on muscle tissue: performance, fatigue and repair benefited by the power of light.\" Photonics &amp; Lasers in Medicine.</p>\r\n</div>\r\n<div>\r\n<p>[4] Bjordal, J. M., Johnson, M. I., Iversen, V., Aimbire, F., &amp; Lopes-Martins, R. A. (2006). \"Low-level laser therapy in acute pain: a systematic review of possible mechanisms of action and clinical effects in randomized placebo-controlled trials.\" Journal of Photochemistry and Photobiology.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 8, '', '2023-12-17 10:34:20', 'post_1702827260.png', '1'),
(26, 'Joint Health', '<div>\r\n<div>\r\n<h3>Understanding Joint Health: A Blend of Wellness and Science</h3>\r\n</div>\r\n<div>\r\n<p>Joint health is an essential aspect of overall wellness, reflecting the condition and functionality of the body\'s joints&mdash;the points where two bones are connected to allow for movement and support. From a scientific perspective, joint health is often evaluated by the integrity of the structures that make up the joint, including bones, cartilage, tendons, ligaments, and synovial fluid, which acts as a lubricant.</p>\r\n<div>\r\n<div>\r\n<h3>The Main Concerns with Joint Health</h3>\r\n</div>\r\n<div>\r\n<p>As we age or engage in repetitive movements, our joint health can be compromised. Concerns typically arise from conditions such as osteoarthritis, rheumatoid arthritis, bursitis, and general wear and tear. These conditions can lead to symptoms like pain, stiffness, swelling, and reduced range of motion. Factors contributing to joint issues include aging, obesity, overuse, injuries, and inflammatory diets.</p>\r\n</div>\r\n<div>\r\n<h3>The Science Behind Infrared Light Therapy and Joint Health</h3>\r\n</div>\r\n<div>\r\n<p>Infrared light therapy, also known as photobiomodulation, has emerged as a promising tool for improving joint health. This non-invasive treatment involves the use of specific wavelengths of light to penetrate the skin and underlying tissues, providing a therapeutic effect.</p>\r\n</div>\r\n<div>\r\n<h4>Scientific Mechanisms</h4>\r\n</div>\r\n<div>\r\n<p>The benefits of infrared light therapy for joint health are backed by several mechanisms, as noted in the scientific literature:</p>\r\n</div>\r\n<ol>\r\n<li>Enhancing Circulation: Infrared light has been shown to increase the production of nitric oxide, a vasodilator that improves blood flow to tissues, providing more oxygen and nutrients crucial for healing [1].</li>\r\n<li>Reducing Inflammation: Studies suggest that infrared therapy may reduce inflammation by decreasing the production of inflammatory cytokines and increasing anti-inflammatory cytokines [2]</li>\r\n<li>Pain Relief: The therapy can also lead to pain relief, possibly by stimulating the release of endorphins or by blocking the pain-transmitting neurons (Analgesia).</li>\r\n<li>Stimulating Cellular Repair and Regeneration: Infrared light influences cellular repair mechanisms, promoting the healing of tendons, muscles, and even bones [3].</li>\r\n</ol>\r\n<div>\r\n<h4>Evidence-Based Outcomes</h4>\r\n</div>\r\n<div>\r\n<p>Research has provided evidence for the benefits of infrared therapy. For instance, a study in the journal \'Lasers in Surgery and Medicine\' showed that patients with chronic low back pain experienced significant improvement after infrared therapy sessions [4]. Another study in \'The Journal of Rheumatology\' concluded that infrared therapy could reduce the pain and morning stiffness associated with rheumatoid arthritis [5].</p>\r\n</div>\r\n<div>\r\n<h4>Integrating Infrared Light Therapy Into Your Routine</h4>\r\n</div>\r\n<div>\r\n<p>Incorporating infrared light therapy into your routine for joint health can be seamless and enjoyable:</p>\r\n</div>\r\n<ol>\r\n<li>Consultation: Start with a consultation with a healthcare provider to determine if infrared therapy is right for your specific condition.</li>\r\n<li>Frequency: For optimal results, a typical recommendation might include sessions several times per week.</li>\r\n<li>Duration: Sessions can range from 10 to 30 minutes, depending on the device and the area being treated.</li>\r\n<li>Relaxation: Use your therapy time as a chance to relax. Many users find the warmth soothing and meditative.</li>\r\n<li>Combination with Movement: Some may benefit from light stretching or gentle exercise post-therapy to maximize joint mobility.</li>\r\n</ol>\r\n<div>\r\n<h3>Conclusion</h3>\r\n</div>\r\n<div>\r\n<p>Joint health is vital for a fulfilling and active life. With the scientific backing of its efficacy, infrared light therapy offers a promising avenue to support and maintain the health of your joints. Whether you\'re dealing with the everyday wear and tear of life or more significant joint issues, integrating this therapeutic modality could be a bright step toward a more comfortable and mobile existence.</p>\r\n</div>\r\n<div>\r\n<p>To learn more about our specific infrared and blue light therapy products and how they can enhance your joint health routine, visit our website or contact us directly. Let us light the way to your joint health and wellness journey.</p>\r\n</div>\r\n<div>\r\n<p>-------------------------------------------</p>\r\n</div>\r\n<div>\r\n<p>References:</p>\r\n</div>\r\n<div>\r\n<p>[1] Harvard Health Publishing. (2021). \"The Benefits of Light Therapy.\" Harvard Medical School.</p>\r\n</div>\r\n<div>\r\n<p>[2] Hamblin, M. R. (2017). \"Mechanisms and applications of the anti-inflammatory effects of photobiomodulation.\" AIMS Biophysics, 4(3), 337&ndash;361.</p>\r\n</div>\r\n<div>\r\n<p>[3] Aimbire, F., Albertini, R., Pacheco, M. T., Castro-Faria-Neto, H. C., Leonardo, P. S., Iversen, V. V., ... &amp; Bjordal, J. M. (2006). \"Low-level laser therapy induces dose-dependent reduction of TNF-alpha levels in acute inflammation.\" Photomedicine and Laser Surgery, 24(1), 33-37.</p>\r\n</div>\r\n<div>\r\n<p>[4] Klein, R. G., &amp; Eek, B. C. (2011). \"Low-level laser therapy for low back pain.\" Lasers in Surgery and Medicine, 43(8), 777-784.</p>\r\n</div>\r\n<div>\r\n<p>[5] Castano, A. P., Dai, T., Yaroslavsky, I., Cohen, R., Apruzzese, W. A., Smotrich, M. H., &amp; Hamblin, M. R. (2006). \"Low-level laser therapy for zymosan-induced arthritis in rats: Importance of illumination time.\" Lasers in Surgery and Medicine, 38(6), 543-550.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 8, '', '2023-12-17 10:35:53', 'post_1702827354.png', '1');
INSERT INTO `posts` (`post_id`, `post_title`, `post_description`, `post_tag`, `post_featured`, `post_date`, `post_image`, `post_status`) VALUES
(27, 'Sun Damage', '<div>\r\n<div>\r\n<h3>Harnessing the Power of Light Therapy to Combat Sun Damage</h3>\r\n</div>\r\n<div>\r\n<p>The effects of the sun on our skin are both profound and extensive, impacting it in ways that go beyond the superficial layers. In this article, we&rsquo;ll explore the science of sun-induced skin damage, and how modern skincare, alongside innovative therapies like blue and infrared light, can not only combat but also reverse some of these effects.</p>\r\n<div>\r\n<div>\r\n<h3>Understanding the Causes of Sun Damage:</h3>\r\n</div>\r\n<div>\r\n<p>Sun damage occurs primarily due to overexposure to UV radiation from the sun. There are two types of UV rays that contribute to sun damage [1]:</p>\r\n</div>\r\n<ul>\r\n<li>UVA (Ultraviolet A): These rays are responsible for premature skin aging. They penetrate the skin\'s deeper layers, damaging collagen, and elastin, leading to wrinkles and sagging.</li>\r\n<li>UVB (Ultraviolet B): UVB rays are the main culprits behind sunburn. They affect the skin\'s surface and can cause redness, peeling, and blistering.</li>\r\n</ul>\r\n<div>\r\n<h3>Symptoms of Sun Damage:</h3>\r\n</div>\r\n<div>\r\n<p>The repeated exposure to UV radiation can cause various symptoms of sun damage, which become more pronounced over time. Common signs of sun damage include:</p>\r\n</div>\r\n<ul>\r\n<li>Sunburn: Red, painful, and peeling skin after excessive sun exposure.</li>\r\n<li>Dark Spots: Uneven pigmentation, commonly known as age spots or sunspots.</li>\r\n<li>Wrinkles: Premature development of fine lines and wrinkles.</li>\r\n<li>Skin Sagging: Loss of skin elasticity and firmness.</li>\r\n<li>Dryness: Dehydrated and flaky skin.</li>\r\n<li>Hyperpigmentation: Darkening of specific areas on the skin.</li>\r\n<li>Actinic Keratosis: Precancerous skin lesions.</li>\r\n<li>Skin Cancer: The most severe outcome of prolonged sun damage.</li>\r\n</ul>\r\n<div>\r\n<h3>Health Risks Associated with Sun Damage:</h3>\r\n</div>\r\n<div>\r\n<p>Sun damage is not just a cosmetic concern; it also poses significant health risks. The excessive accumulation of UV radiation can result in various skin conditions and, in extreme cases, lead to skin cancer. Therefore, it is crucial to protect your skin from the harmful effects of the sun to maintain your overall well-being.</p>\r\n</div>\r\n<div>\r\n<h4>Mitigating Sun Damage with Skincare</h4>\r\n</div>\r\n<div>\r\n<p>A proactive skincare routine can greatly assist in mitigating the effects of sun exposure [2]:</p>\r\n</div>\r\n<ul>\r\n<li>Sunscreens: Provide a physical barrier to UV rays and are critical in any skincare routine.</li>\r\n<li>Antioxidants: Products containing vitamins C and E can neutralize free radicals generated by UV exposure.</li>\r\n<li>Retinoids: Help repair sun-damaged skin and can improve the appearance of sun-induced aging.</li>\r\n</ul>\r\n<div>\r\n<h4>How Blue and Infrared Light Therapy Can Help:</h4>\r\n</div>\r\n<div>\r\n<p>Blue and infrared light therapy devices offer a non-invasive and effective approach to combat the symptoms and effects of sun damage [3]:</p>\r\n</div>\r\n<ul>\r\n<li>Blue Light Therapy:\r\n<ul>\r\n<li>Reduces inflammation: Blue light has anti-inflammatory properties, making it ideal for treating sunburn.</li>\r\n<li>Targets acne: It can help clear acne-prone skin that may worsen due to sun damage.</li>\r\n<li>Skin rejuvenation: Blue light therapy promotes collagen production, helping to reduce the appearance of fine lines and wrinkles.</li>\r\n</ul>\r\n</li>\r\n<li>Infrared Light Therapy:\r\n<ul>\r\n<li>Promotes healing: Infrared light penetrates deep into the skin, aiding in the repair of damaged cells and tissues.</li>\r\n<li>Increases blood flow: Improved circulation assists in delivering vital nutrients to the skin, aiding in its recovery.</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n<div>\r\n<p>Combined, these therapies can be a powerful tool in addressing the various symptoms of sun damage and promoting healthier, rejuvenated skin. Light therapy sessions can be conveniently incorporated into your wellness routine, helping you regain your skin\'s natural glow and vitality.</p>\r\n</div>\r\n<div>\r\n<p>By selecting skincare products with these key ingredients, you can maximize your efforts in minimizing the effects of sun damage. Combining these products alongside blue and infrared light therapy creates a comprehensive approach to healthier and more resilient skin.</p>\r\n</div>\r\n<div>\r\n<p>-------------------------------------------</p>\r\n</div>\r\n<div>\r\n<p>References:</p>\r\n</div>\r\n<div>\r\n<p>[1]Ritti&eacute;, L., &amp; Fisher, G. J. (2002). UV-light-induced signal cascades and skin aging. Ageing research reviews, 1(4), 705-720.</p>\r\n</div>\r\n<div>\r\n<p>[2]Burke, K. E. (2007). Interaction of vitamins C and E as better cosmeceuticals. Dermatologic Therapy, 20(5), 314-321.</p>\r\n</div>\r\n<div>\r\n<p>[3]Avci, P., Gupta, A., Sadasivam, M., Vecchio, D., Pam, Z., Pam, N., &amp; Hamblin, M. R. (2013). Low-level laser (light) therapy (LLLT) in skin: stimulating, healing, restoring. Seminars in cutaneous medicine and surgery, 32(1), 41-52.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 8, '', '2023-12-17 10:37:16', 'post_1702827437.png', '1'),
(28, 'Scaring', '<div>\r\n<h3>Harnessing the Power of Blue and Infrared Light Therapy to Heal Scars</h3>\r\n</div>\r\n<div>\r\n<p>Scars are a natural part of the body\'s healing process, but they can cause concern for many people. Whether they are caused by surgery, accidents, acne, or other skin injuries, scars can affect not only our appearance but also our self-esteem. In this article, we will discuss the causes and symptoms of scars and how blue and infrared light therapy can help reduce their appearance and improve overall skin health.</p>\r\n<div>\r\n<div>\r\n<h3>Why Do We Develop Scars?</h3>\r\n</div>\r\n<div>\r\n<p>Scarring is the body\'s way of repairing and replacing damaged tissue. When an injury or wound penetrates the deeper layers of the skin, the body activates a complex healing process. This process includes inflammation, tissue regeneration, and collagen production. Collagen is the key structural protein responsible for providing strength and support to the skin. During the repair process, the body\'s natural response can sometimes result in an overproduction or uneven distribution of collagen, leading to the formation of scars.</p>\r\n</div>\r\n<div>\r\n<h4>Common Symptoms and Causes of Scars</h4>\r\n</div>\r\n<ul>\r\n<li>Hypertrophic Scars: These scars are raised and red in appearance. They develop when the body produces excess collagen during the healing process. Hypertrophic scars are more common in individuals with a genetic predisposition and can be itchy and uncomfortable.</li>\r\n<li>Atrophic Scars: These scars appear as indentations or depressions in the skin and are often associated with conditions like acne. Atrophic scars occur when there is a loss of tissue during the healing process.</li>\r\n<li>Keloid Scars: Keloids are a type of raised scar that extends beyond the boundary of the original wound. They can be itchy and painful and are more common in darker-skinned people.</li>\r\n<li>Surgical Scars: After surgeries, scars can develop depending on factors like the type of incision, the skill of the surgeon, and the body\'s natural healing process.</li>\r\n<li>Burn Scars: Burns can cause a variety of scars, including contracture scars (tightening of the skin) and hypertrophic scars.</li>\r\n</ul>\r\n<div>\r\n<h3>How Blue and Infrared Light Therapy Can Help</h3>\r\n</div>\r\n<div>\r\n<p>Blue and infrared light therapy has gained popularity for their versatility in addressing various skin concerns, including reducing scar appearance. These therapies work at the cellular level to promote healthier skin and encourage the body\'s natural healing processes. Here\'s how they can assist in scar reduction [1]</p>\r\n</div>\r\n<ul>\r\n<li>Reducing Inflammation: Both blue and infrared light have anti-inflammatory properties. Inflammation is a common response during the formation of scars, and by reducing it, these therapies help minimize the severity of scars.</li>\r\n<li>Collagen Production: Infrared light therapy stimulates the production of new collagen, promoting a more balanced distribution of this essential protein during the healing process. This can help prevent the formation of raised, hypertrophic scars.</li>\r\n<li>Cellular Regeneration: Infrared light therapy enhances the regeneration of skin cells, helping to replace damaged tissue with healthier skin. This is especially beneficial for atrophic scars, as it aids in building up the depressed areas.</li>\r\n<li>Improved Blood Circulation: Both blue and infrared light therapies can enhance blood circulation to the treated area, ensuring that necessary nutrients and oxygen reach the scar site accelerating the healing process.</li>\r\n<li>Pain Reduction: For scars that are painful or itchy, infrared light therapy can help alleviate discomfort and itching, leading to overall improved skin comfort.</li>\r\n</ul>\r\n<div>\r\n<h3>Skincare Products for Scar Reduction</h3>\r\n</div>\r\n<div>\r\n<p>Choosing the right skincare products can make a substantial difference in reducing the appearance of scars [2]. Look for products that contain the following ingredients:</p>\r\n</div>\r\n<ul>\r\n<li>Vitamin C: Vitamin C is known for its ability to promote collagen production, making it an excellent choice for scar reduction. It also has antioxidant properties that protect the skin from damage.</li>\r\n<li>Hyaluronic Acid: Hyaluronic acid is a powerful moisturizer that helps improve skin texture, reducing the appearance of scars over time.</li>\r\n<li>Retinoids: Retinoids, like retinol, can enhance skin cell turnover, reducing the visibility of scars and improving skin texture.</li>\r\n<li>Aloe Vera: Aloe vera is known for its soothing and healing properties. It can help reduce inflammation and provide relief to irritated skin.</li>\r\n<li>Natural Oils: Some natural oils, such as rosehip and lavender, have been found to improve skin elasticity and minimize scar appearance.</li>\r\n</ul>\r\n<div>\r\n<h3>Conclusion</h3>\r\n</div>\r\n<div>\r\n<p>Scars may be an inevitable part of our healing process, but they don\'t have to be permanent or unsightly. Blue and infrared light therapy offers a non-invasive and natural way to support the body\'s healing mechanisms, reducing inflammation, promoting collagen production, and encouraging cellular regeneration. By harnessing the power of these therapies, individuals can achieve not only improved skin appearance but also enhanced overall skin wellness. Whether it\'s for cosmetic, wellness, or health purposes, blue and infrared light therapy devices have the potential to help you on your journey to healthier, scar-free skin.</p>\r\n</div>\r\n<div>\r\n<p>-------------------------------------------</p>\r\n</div>\r\n<div>\r\n<p>References:</p>\r\n</div>\r\n<div>\r\n<p>[1]Shafirstein, G., Friedman, A., Siegel, E., Moreno, M., B&auml;umler, W., Fan, C. Y., ... &amp; Griffin, R. J. (2012). Using nonthermal irreversible electroporation to create tissue scaffolds for skin grafts. Annals of biomedical engineering, 40(2), 476-486.</p>\r\n</div>\r\n<div>\r\n<p>[2]Mustoe, T. A. (2008). Evolution of silicone therapy and mechanism of action in scar management. Aesthetic plastic surgery, 32(1), 82-92.</p>\r\n</div>\r\n</div>\r\n</div>', 8, '', '2023-12-17 10:38:37', 'post_1702827518.png', '1'),
(29, 'Body Contouring', '<div>\r\n<div>\r\n<h3>Achieve Your Wellness Goals with Blue and Infrared Light Therapy for Body Contouring</h3>\r\n</div>\r\n<div>\r\n<p>Body contouring has evolved from a trend to a cornerstone in the pursuit of physical wellness and aesthetic satisfaction. It\'s a scientific art, shaping the body\'s landscape, with a focus not just on fat reduction but also on skin texture and tone. In this fusion of technology and topical treatments, we explore how to chisel out the best results.</p>\r\n<div>\r\n<div>\r\n<h4>Best Practices for Body Contouring:</h4>\r\n</div>\r\n<ul>\r\n<li>Maintain a Balanced Diet: Maintaining a balanced diet is a crucial aspect of body contouring. Proper nutrition not only helps with weight management but also ensures that your body receives essential vitamins and minerals for overall health. To achieve this, focus on consuming whole foods, lean proteins, and plenty of fruits and vegetables. Remember to stay hydrated and limit your intake of processed and high-sugar foods.</li>\r\n<li>Regular Exercise: Physical activity is fundamental to body contouring. Incorporating regular exercise into your routine can help you build muscle, increase metabolism, and reduce excess body fat. Combining strength training and cardiovascular exercises is an effective way to achieve your body-shaping goals.</li>\r\n<li>Getting enough sleep and allowing your body to recover after workouts is often underestimated but crucial for successful body contouring. Quality sleep and recovery time help repair and regenerate cells, ensuring your body operates at its best.</li>\r\n<li>Targeted Treatments: For those stubborn areas where diet and exercise alone don\'t yield the desired results, consider non-invasive body contouring treatments. These therapies can help reduce localized fat, tighten skin, and enhance your body\'s appearance.</li>\r\n</ul>\r\n<div>\r\n<h4>Advancing Contouring with Skincare</h4>\r\n</div>\r\n<div>\r\n<p>High-performance skincare products complement body contouring treatments by [1]:</p>\r\n</div>\r\n<ul>\r\n<li>Hydration: Well-hydrated skin can better withstand the stress of contouring treatments and aid in recovery.</li>\r\n<li>Firming Agents: Ingredients like caffeine and retinol are believed to tighten the skin and improve texture.</li>\r\n<li>Collagen Stimulation: Products with peptides or hyaluronic acid can support skin\'s structural integrity during the contouring process.</li>\r\n</ul>\r\n<div>\r\n<h4>How Blue and Infrared Light Therapy Can Help:</h4>\r\n</div>\r\n<ul>\r\n<li>Enhanced Blood Circulation: Both blue and infrared light therapy can promote improved blood circulation. This increased circulation can assist in the removal of toxins and the transportation of essential nutrients to the target areas, aiding in the body contouring process.</li>\r\n<li>Reduction of Inflammation: Infrared light therapy, in particular, is known for its anti-inflammatory properties. It can help reduce swelling and inflammation in treated areas, making your body contouring journey more comfortable and efficient.</li>\r\n<li>Fat Reduction and Tightening: Blue and infrared light therapy devices can help break down fat cells and stimulate collagen production, leading to fat reduction and skin tightening. This contributes to a more toned and sculpted appearance in the treated areas.</li>\r\n<li>Pain Management and Relaxation: These therapies can relieve sore muscles or discomfort associated with exercise and body contouring procedures. A pain-free experience can help you stay motivated and committed to your wellness goals.</li>\r\n</ul>\r\n<div>\r\n<h4>Integrating Light Therapy into Body Contouring Routines</h4>\r\n</div>\r\n<div>\r\n<p>A structured approach ensures light therapy enhances body contouring results:</p>\r\n</div>\r\n<ol>\r\n<li>Morning: Apply a firming lotion to support the skin\'s elasticity and engage in a session of infrared light therapy to boost circulation and prep the skin for the day ahead.</li>\r\n<li>Evening: After a shower, when the skin is most receptive, another round of infrared therapy can support overnight recovery and collagen production.</li>\r\n</ol>\r\n<div>\r\n<h4>The Role of Skincare Products and Ingredients:</h4>\r\n</div>\r\n<div>\r\n<p>To maximize the effectiveness of body contouring and the benefits of light therapy, it\'s essential to complement your routine with the right skincare products and ingredients:</p>\r\n</div>\r\n<ol>\r\n<li>Topical Fat Reduction Products: Look for topical products that contain ingredients like caffeine, retinol, and peptides. These ingredients can help break down fat and promote skin tightening, aligning with your body contouring goals.</li>\r\n<li>Hydration and Skin Health: Maintaining well-hydrated and healthy skin is crucial. Products with hyaluronic acid, vitamin C, and antioxidants can support skin hydration, repair, and overall wellness. Healthy skin is more responsive to the benefits of body contouring treatments.</li>\r\n</ol>\r\n<div>\r\n<h3><br />Conclusion:</h3>\r\n</div>\r\n<div>\r\n<p>Body contouring, when approached from a wellness perspective, encompasses both aesthetics and overall health. Combining a balanced diet, regular exercise, proper rest, and non-invasive treatments such as blue and infrared light therapy can enhance your body contouring results. Embrace these best practices and the benefits of light therapy to embark on a journey toward a more confident, healthier, and sculpted you. Remember to consult with a healthcare professional or wellness expert before starting any new regimen to ensure that it aligns with your needs and goals. Your well-being is worth the investment, and light therapy can be an essential tool in your quest for holistic wellness and self-improvement.</p>\r\n</div>\r\n<div>\r\n<p>-------------------------------------------</p>\r\n</div>\r\n<div>\r\n<p>References:</p>\r\n</div>\r\n<div>\r\n<p>[1]Alam, M., &amp; Dover, J. S. (2011). Treatment of cellulite with a bipolar radiofrequency, infrared heat, and pulsatile suction device: a pilot study. Journal of Cosmetic Dermatology, 10(4), 298-303.</p>\r\n</div>\r\n<div>\r\n<p>[2]Neira, R., Arroyave, J., Ramirez, H., Ortiz, C. L., Solarte, E., Sequeda, F., &amp; Gutierrez, M. I. (2002). Fat liquefaction: effect of low-level laser energy on adipose tissue. Plastic and reconstructive surgery, 110(3), 912-922.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 8, '', '2023-12-17 10:40:05', 'post_1702827605.png', '1');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_title` varchar(150) NOT NULL,
  `product_description` text NOT NULL,
  `wyslt` text DEFAULT NULL,
  `size` varchar(200) DEFAULT NULL,
  `benefits` text DEFAULT NULL,
  `htuse` text DEFAULT NULL,
  `product_video` text DEFAULT NULL,
  `tips` text DEFAULT NULL,
  `tags` varchar(255) NOT NULL,
  `discount` text DEFAULT NULL,
  `articles` text DEFAULT NULL,
  `key_ingredient` text DEFAULT NULL,
  `ws_incl` text DEFAULT NULL,
  `product_type` int(11) NOT NULL,
  `product_featured` varchar(11) DEFAULT NULL,
  `product_image` text DEFAULT NULL,
  `product_price` varchar(50) DEFAULT NULL,
  `product_status` varchar(11) DEFAULT NULL,
  `product_link` text DEFAULT NULL,
  `review_des` text DEFAULT NULL,
  `technology` text DEFAULT NULL,
  `hiworks` text DEFAULT NULL,
  `volumn` text DEFAULT NULL,
  `one_time_price` decimal(10,2) DEFAULT NULL,
  `price_30_days` decimal(10,2) DEFAULT NULL,
  `desc_30` text DEFAULT NULL,
  `price_60_days` decimal(10,2) DEFAULT NULL,
  `desc_60` text DEFAULT NULL,
  `price_90_days` decimal(10,2) DEFAULT NULL,
  `desc_90` text DEFAULT NULL,
  `price_120_days` decimal(10,2) DEFAULT NULL,
  `desc_120` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_title`, `product_description`, `wyslt`, `size`, `benefits`, `htuse`, `product_video`, `tips`, `tags`, `discount`, `articles`, `key_ingredient`, `ws_incl`, `product_type`, `product_featured`, `product_image`, `product_price`, `product_status`, `product_link`, `review_des`, `technology`, `hiworks`, `volumn`, `one_time_price`, `price_30_days`, `desc_30`, `price_60_days`, `desc_60`, `price_90_days`, `desc_90`, `price_120_days`, `desc_120`) VALUES
(9, 'BLU Blue Light Therapy- Pre Order', '<p>lorem ipsum</p>', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 9, '1', 'product_01701745397.png,product_01702173850.png,product_01702173894.png', '', '1', 'http://google.com', 'LOREM IPSUM', 'DOLOR SIT AMET', 'lets GO', '60ml / 1 fl.oz', 60.00, 60.00, NULL, 50.00, NULL, 40.00, NULL, NULL, NULL),
(11, 'Test product', '<div>\r\n<div>\r\n<p>Elevate your skincare routine with the Test product Red light therapy device, our most popular product is also the mostpowerful combination of LED, red, and Infrared light that revitalizes skin, diminishes fine lines, and promotes deep healing.</p>\r\n</div>\r\n</div>', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 8, '0', 'product_01702819705.png', '', '1', 'https://www.infera-us.com/store/p/infera-face-and-body-device', 'Non-Invasive Revitalizing Technology\r\nTest product device promotes a natural and effective rejuvenation process, with the thermal energy enhancing blood circulation and facilitating the delivery of nutrients to treated areas, activating the body\'s self-healing mechanism.\r\n\r\nAnti-Aging and Skin Enhancement\r\nExperience a transformation in skin complexion, tone, and texture with the Test product device. The red light therapy increases collagen and elastic fiber density, reducing the appearance of fine lines and wrinkles. Enjoy tighter, smoother, and more youthful-looking skin as the device works to enhance the natural elasticity and vitality of your skin.\r\n\r\nPain Relief and Deep Tissue Healing\r\nTest product’s Infrared light device promotes oxygen-rich blood circulation, fast healing of deep tissues, and pain relief. It energizes cells, leading to efficient cellular function and rejuvenation for an overall sense of well-being.\r\n\r\nVersatile and Convenient Use\r\nThe newly engineered glass head of the Test product device allows for versatile application on both the face and body. Now you can conveniently use the device with your favorite creams or serums, enhancing your skincare routine. you can take your Test product with you everywhere. it is light, compact, easy to carry in your bag, and travel-friendly.', '- Wavelength: 660 nm (Red) and 850 nm (Infrared)\r\n- Therapeutic temperature range: 107F / 42C \r\n- Built in rechargeable battery\r\n- Built in timer\r\n\r\nBenefits:\r\n-Stimulates collagen and elastin production\r\n-Reduces the appearance of fine lines and wrinkles\r\n-Tightens the skin\r\n-Enhances blood circulation\r\n-Stimulates Cellular Energy\r\n-Reduces Joint Pain and Inflammation\r\n-Relax Sore Muscles/Joints\r\n-Enhances the body\'s natural anti-inflammatory response\r\n-Reduces muscle soreness\r\n-Facilitates faster healing of wounds and injuries\r\n-Stimulates hair follicles, promoting thicker and fuller hair', 'Red light therapy, also known as low-level laser therapy (LLLT) or photobiomodulation, operates on the principle of harnessing specific wavelengths of red and near-infrared light to interact with cellular structures. This interaction triggers a cascade of biological processes, including increased mitochondrial activity, improved ATP production, and modulation of key cellular signaling pathways. As a result, red light therapy enhances cellular repair, reduces inflammation, and fosters an environment conducive to optimal healing, making it a versatile and non-invasive therapeutic approach with applications in skincare, pain management, and overall health.', '', 8700.00, 0.00, NULL, 0.00, NULL, 0.00, NULL, NULL, NULL),
(12, 'Test product Mini', '<div>\r\n<div>\r\n<p>Specifically designed to address the delicate skin around your eyes, the Mini compact marvel seamlessly integrates red and blue light technologies to minimize the appearance of fine lines, and reduce puffy eyes and dark circles.</p>\r\n</div>\r\n</div>', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 8, '0', 'product_01702819685.png', '', '1', 'https://www.infera-us.com/store/p/infera-eye-wand', 'Fast Results\r\nThe Test product Mini Eye Device delivers fast and visible results from the very first use, unveiling a revitalized and refreshed look around your eyes. \r\n\r\nEasy to Use\r\nSeamlessly integrating into your skincare routine, the Test product Mini is effortlessly easy to use, enhancing the simplicity of your regimen. Easily incorporate it into your morning and night rituals to apply eye treatments, ensuring a hassle-free and effective addition to your skincare regimen.\r\n\r\nCompact and Portable\r\nDesigned to fit into your lifestyle, the Test product Mini\'s small size allows it to effortlessly slip into your purse, ensuring on-the-go skincare convenience whenever and wherever you desire.', '- Wavelength: 425 nm (Blue) and 660 nm (Red)\r\n- Therapeutic temperature range: 107F / 42C \r\n- Built in rechargeable battery\r\n- Built in timer', 'To use the INFERA mini, turn ON and glide, as the wand allows for easy maneuverability and a gentle application around the delicate eye contour. It may be applied with any cream or serum, morning and night.\r\n\r\nRed Light Therapy mode \r\nDeeply penetrates to stimulate collagen production, improve firmness. and combats discoloration - targeting the appearance of wrinkles and fine lines\r\n\r\nBlue Light Therapy mode \r\nMinimizes swelling and puffiness, combats discoloration, diminishes dark circles and promotes a tighter and more refined surface. \r\n\r\nHigh-Frequency Vibrations \r\nGently and effectively stimulate dermal layers\r\n\r\nThermal Heat Therapy \r\nAssists in stimulating the blood flow and helps boost the absorption of your skincare.\r\n\r\nBenefits:\r\nStimulates collagen and elastin production\r\nReduces the appearance of fine lines and wrinkles\r\nTightens the skin\r\nEnhances blood circulation\r\nStimulates Cellular Energy\r\nReduces puffy eyes\r\nTreats dark circles', '', 1295.00, 0.00, NULL, 0.00, NULL, 0.00, NULL, NULL, NULL),
(13, 'BLU', '<div>\r\n<div>\r\n<div>\r\n<div>\r\n<p>Harness the power of blue light technology with our compact powerhouse that combines LED blue light therapy with topical heat. Clinically proven technology to treat and heal acne-prone skin, pigmentation, redness and scars.</p>\r\n<p><strong>Benefits:</strong></p>\r\n<div>\r\n<ul>\r\n<li>Clinically proven to treat &amp; heal acne-prone skin.</li>\r\n<li>Terminates acne-causing bacteria deep in the skin.</li>\r\n<li>Decreases breakouts on the surface of the skin.</li>\r\n<li>Stimulates microcirculation for faster healing.</li>\r\n<li>Acts as an anti-inflammatory to reduce swelling and redness.</li>\r\n<li>Balances melanin production on the skin.</li>\r\n<li>Reduces sun damage, age spots and discoloration.</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 8, '', 'product_01702819854.png', '', '1', 'https://www.infera-us.com/store/p/blu-blue-light-therapy', 'Medical Technology at Your Fingertips\r\nSave time and enjoy privacy while achieving professional-grade results – our device brings medical expertise directly into your hands, providing a cost-effective and efficient solution for radiant, blemish-free skin.\r\n\r\nFast Results\r\nWith your consistency and good usage habits the Test product BLU can deliver fast and visible results after few treatments only, unveiling a healthier, smoother complexion.', '- Wavelength: 400-450nm (Blue Light)\r\n- Therapeutic temperature range: 107F / 42C \r\n- Built in rechargeable battery', 'The INFERA BLU device uses LED blue light therapy, combined with topical heat. This combination increases blood flow to the treated areas, while eliminating bacteria and toxins trapped under the skin.\r\nThe BLU device helps to reduce redness and inflammation by healing the sebaceous glands, minimizing pores, increasing the blood flow to the treated area, and providing proteins, nutrients, and oxygen to heal and improve the skin\'s appearance naturally. \r\nThe result is a refreshed complexion, that both looks and feels healthier - all without any of the side effects that can be caused by topical medications.', '', 7600.00, 0.00, NULL, 0.00, NULL, 0.00, NULL, NULL, NULL),
(14, 'Body Device', '<p>A revolutionary full-body LED device that offers a range of features to make at-home LED treatments more efficient and effective than ever before. With its patented foldable and portable design, it is easy to take with you wherever you go, allowing you to experience the benefits of LED light therapy no matter where you are. With 360 LED and infrared points, and a width of 23 inches, Cosmo is the most potent and efficient full-body LED device to be used on any area of the body.</p>\r\n<p><strong>Benefits:</strong></p>\r\n<div>\r\n<ul>\r\n<li>Stimulates collagen and elastin production</li>\r\n<li>Reduces the appearance of fine lines and wrinkles</li>\r\n<li>Tightens the skin</li>\r\n<li>Enhances blood circulation</li>\r\n<li>Stimulates Cellular Energy</li>\r\n<li>Reduces Joint Pain and Inflammation</li>\r\n<li>Relax Sore Muscles/Joints</li>\r\n<li>Enhances the body\'s natural anti-inflammatory response</li>\r\n<li>Reduces muscle soreness</li>\r\n<li>Facilitates faster healing of wounds and injuries</li>\r\n<li>Stimulates hair follicles, promoting thicker and fuller hair</li>\r\n<li>Treat &amp; heal acne-prone skin.</li>\r\n<li>Reduces swelling and redness.</li>\r\n<li>Reduces sun damage, age spots and discoloration.</li>\r\n<li>Weight loss</li>\r\n<li>Cellulite &amp; stretch marks</li>\r\n<li>Hair growth</li>\r\n<li>sleep optimization</li>\r\n<li>Performance &amp; Recovery</li>\r\n<li>Mental Acuity</li>\r\n</ul>\r\n</div>\r\n<p>&nbsp;</p>', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 8, '0', 'product_01702820207.png', '', '1', 'https://www.infera-us.com/store/p/infrared-light-therapy-body-device', 'Spa-Like Rejuvenation\r\nEscape the need for costly treatments and immerse yourself in the opulence of spa-like rejuvenation within the tranquility of your own home. Now you can treat  and pamper your friends and family members with your own medical device.\r\n\r\nTreatment Variety &amp; Customization\r\nTailor your skincare experience to your unique needs with our fully customizable device, allowing you to create personalized treatments and set session times that align perfectly with your schedule and preferences. From targeted rejuvenation to relaxation, empower yourself to curate a beauty regimen that suits your individual requirements, providing a truly personalized and indulgent skincare journey.', '- Infrared spectrum  700 nm to 0.1 mm in wavelength,(near, mid, and far-infrared) \r\n- LED Points: 360 LEDS\r\n- Dimensions: 58*30*58CM/22.8*11.8*22.8IN\r\n- Manual Timer: UP TO 60 MIN', 'Red Light (633nm)\r\nPowerfully stimulates collagen and elastin production.\r\nDiminishes the appearance of wrinkles and fine lines.\r\nAccelerates skin recovery, promotes scar healing, and improves overall circulation.\r\n\r\nInfrared Light (850nm)\r\nReduces inflammation to treat underlying fat structures.\r\nAccelerates the healing process, promotes cellular renewal and health.\r\n\r\nBlue Light (450nm)\r\nDirectly targets and eradicates acne-causing bacteria.\r\nDrastically reduces inflammation and prevents future acne breakouts.\r\nDetoxifies the skin, leading to a clearer and more refreshed complexion.\r\n\r\nYellow Light (590nm)\r\nThe yellow light setting is designed to treat skin redness and flushing, rosacea, UV radiation damage and reduce the appearance of telangiectasias (ruptured blood vessels) on the nose and face.', '', 54800.00, 0.00, NULL, 0.00, NULL, 0.00, NULL, NULL, NULL),
(15, 'Full Spectrum Therapy Bed', '<div>\r\n<div>\r\n<p>The ultimate full-body thermal phototherapy experience that will transform your wellness routine. Using the power of far infrared thermal energy and 7 different light wavelengths, the full spectrum therapy bed is designed to provide a range of wellness benefits that enhances your body\'s natural healing processes.</p>\r\n<p><strong>Benefits:</strong></p>\r\n<div>\r\n<ul>\r\n<li>Stimulates collagen and elastin production</li>\r\n<li>Reduces the appearance of fine lines and wrinkles</li>\r\n<li>Tightens the skin</li>\r\n<li>Enhances blood circulation</li>\r\n<li>Stimulates Cellular Energy</li>\r\n<li>Reduces Joint Pain and Inflammation</li>\r\n<li>Relax Sore Muscles/Joints</li>\r\n<li>Enhances the body\'s natural anti-inflammatory response</li>\r\n<li>Reduces muscle soreness</li>\r\n<li>Facilitates faster healing of wounds and injuries</li>\r\n<li>Stimulates hair follicles, promoting thicker and fuller hair</li>\r\n<li>Treat &amp; heal acne-prone skin.</li>\r\n<li>Reduces swelling and redness.</li>\r\n<li>Reduces sun damage, age spots and discoloration.</li>\r\n<li>Weight loss</li>\r\n<li>Cellulite &amp; stretch marks</li>\r\n<li>Hair growth</li>\r\n<li>sleep optimization</li>\r\n<li>Performance &amp; Recovery</li>\r\n<li>Mental Acuity</li>\r\n</ul>\r\n</div>\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 8, '', 'product_01702820395.png', '', '1', '', 'Contemporary Elegance\r\nExperience the allure of our sleek and modern design that seamlessly complements any space. Designed to provide full-body coverage, this bed is easy to use and can be customized to your preferences, with adjustable temperature settings and multiple light wavelength options to choose from.\r\n\r\nEmbrace Convenience\r\nRevel in the ultimate comfort as you can lay down and relax in comfortable heat. Our innovative bed combines the relaxing and powerful infrared sauna and the full color spectrum healing benefits of LED light therapy.', 'Full Spectrum Chromotherapy\r\nThis approach utilizes colored LEDs to enhance overall well-being. By exposing individuals to targeted colors and wavelengths, the aim is to balance the chakras and facilitate healing.\r\n\r\nInfrared Heat\r\nThe bed uses dry steam, to affectively burn calories and customize your session.use high temperatures to improve energy,or lower temperatures to have better sleep patterns and achieve relaxation. In addition, our infrared technology, (AKA Near Infrared Invisible low-level laser) heats the body from inside-out and penetrates inner layers\r\n\r\nMagneto-Therapy Mattress\r\nOur pulsed electromagnetic field therapy (PEMF) mat emits pulsing electromagnetic fields while you enjoy the warm holistic stones, to promote relaxation and alleviate pain, headaches, arthritis, and much more.\r\n\r\nFacial Breeze\r\nOur pulsed electromagnetic field therapy (PEMF) mat emits pulsing electromagnetic fields while you enjoy the warm holistic stones, to promote relaxation and alleviate pain, headaches, arthritis, and much more.\r\n\r\nMusic Therapy\r\nThe Capsule offers a unique spa experience with immersive sound. High-fidelity speakers on either side create a relaxing atmosphere with soothing music or calming sounds, relieving daily stress. Connect via Bluetooth for a tranquil and refreshing experience.\r\n\r\nSpecs:\r\n- Power (W): 110V (220V by request)\r\n- Material: Acrylic + glass fiber reinforced plastics\r\n- Size: 86 in x 35 in x 41 in\r\n- Weight: 242 lb', 'The infrared spectrum is between 700 nm to 0.1 mm in wavelength, which can be divided into near, mid, and far-infrared spectrum. \r\nThe longer the wavelength, the lower the frequency and the further the light can penetrate tissues to deliver energy to the cells, stimulating healing and more. \r\nWe have combined all the research, lights, and treatments used by leading dermatologists around the world to give you the one of a kind, all body device.', '', 0.00, 0.00, NULL, 0.00, NULL, 0.00, NULL, NULL, NULL),
(16, 'Capsule', '<div>\r\n<div>\r\n<p>Designed with precision by top dermatologists, Capsule boasts an impressive 11,616 medical-grade LEDs, ensuring your skin receives the ultimate therapeutic experience without stepping outside.</p>\r\n<p><strong>Benefits:&nbsp;</strong></p>\r\n<div>\r\n<ul>\r\n<li>Stimulates collagen and elastin production</li>\r\n<li>Reduces the appearance of fine lines and wrinkles</li>\r\n<li>Tightens the skin</li>\r\n<li>Enhances blood circulation</li>\r\n<li>Stimulates Cellular Energy</li>\r\n<li>Reduces Joint Pain and Inflammation</li>\r\n<li>Relax Sore Muscles/Joints</li>\r\n<li>Enhances the body\'s natural anti-inflammatory response</li>\r\n<li>Reduces muscle soreness</li>\r\n<li>Facilitates faster healing of wounds and injuries</li>\r\n<li>Stimulates hair follicles, promoting thicker and fuller hair</li>\r\n<li>Treat &amp; heal acne-prone skin.</li>\r\n<li>Reduces swelling and redness.</li>\r\n<li>Reduces sun damage, age spots and discoloration.</li>\r\n<li>Weight loss</li>\r\n<li>Cellulite &amp; stretch marks</li>\r\n<li>Hair growth</li>\r\n<li>sleep optimization</li>\r\n<li>Performance &amp; Recovery</li>\r\n<li>Mental Acuity</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 8, '0', 'product_01702820588.png', '', '1', 'www,infera-us.com', 'Pre-Programmed Treatments\r\nThe Capsule is equipped with a responsive touchscreen interface on its exterior. Simply tap to browse and select from the available program options : Anti-Aging, Wrinkles &amp; Lines, Skin Discoloration, Cellulite, Acne, Skin Cleansing &amp; Hydration, and more...\r\n\r\nContemporary Elegance\r\nExperience the allure of our sleek and modern design that seamlessly complements any space. Designed to provide full-body coverage, this bed is easy to use and can be customized to your preferences, with adjustable temperature settings and multiple light wavelength options to choose from.', 'Red Light (633nm)\r\nPowerfully stimulates collagen and elastin production.\r\nDiminishes the appearance of wrinkles and fine lines.\r\nAccelerates skin recovery, promotes scar healing, and improves overall circulation.\r\n\r\nInfrared Light (850nm)\r\nReduces inflammation to treat underlying fat structures.\r\nAccelerates the healing process, promotes cellular renewal and health.\r\n\r\nBlue Light (450nm)\r\nDirectly targets and eradicates acne-causing bacteria.\r\nDrastically reduces inflammation and prevents future acne breakouts.\r\nDetoxifies the skin, leading to a clearer and more refreshed complexion.\r\n\r\nYellow Light (590nm)\r\nThe yellow light setting is designed to treat skin redness and flushing, rosacea, UV radiation damage and reduce the appearance of telangiectasias (ruptured blood vessels) on the nose and face.\r\n\r\nSpecs:\r\n- Machine Color: Mixed Black and White\r\n- Dimensions: (L*W*H): 1930*855*1066 mm\r\n- Total LEDs: 11,616 LEDs\r\n- Power: 1,200 Watt\r\n- Voltage: 110 Volt', 'The infrared spectrum is between 700 nm to 0.1 mm in wavelength, which can be divided into near, mid, and far-infrared spectrum. \r\nThe longer the wavelength, the lower the frequency and the further the light can penetrate tissues to deliver energy to the cells, stimulating healing and more. \r\nWe have combined all the research, lights, and treatments used by leading dermatologists around the world to give you the one of a kind, all body device.', '', 0.00, 0.00, NULL, 0.00, NULL, 0.00, NULL, NULL, NULL),
(18, 'USB-C Charging Block for Test product', '<p><span class=\"a-size-base a-text-bold\"><strong>Connector Type</strong> - <span class=\"a-size-base po-break-word\">USB Type C</span></span></p>\r\n<p><span class=\"a-size-base a-text-bold\"><span class=\"a-size-base po-break-word\"><strong>Compatible Devices</strong> - Test product</span></span></p>\r\n<p><span class=\"a-size-base a-text-bold\"><strong>Color</strong> - Black</span></p>\r\n<p><span class=\"a-size-base a-text-bold\"><strong>Input Voltage</strong> - 240 Volts</span></p>', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 6, '0', 'product_01703040429.jpeg', '', '1', 'www.infera-us.com', '', '', '', '', 15.00, 0.00, NULL, 0.00, NULL, 0.00, NULL, NULL, NULL),
(19, 'Active Vitamin C', '&lt;p style=&quot;font-weight: 400;&quot;&gt;&lt;strong&gt;Antioxidant Skin Serum&lt;/strong&gt;&lt;/p&gt;', '&lt;ul style=&quot;list-style-type: square;&quot;&gt;\r\n&lt;li style=&quot;text-align: left;&quot;&gt;An advanced and powerful serum featuring a remarkably stable high concentration of Vitamin C that resists oxidation.&lt;/li&gt;\r\n&lt;li style=&quot;text-align: left;&quot;&gt;Easily absorbed and effective for up to 48 hours, delivers environmental protection and improves the appearance of fine lines and wrinkles, loss of firmness, and brightens skin&#039;s complexion.&lt;/li&gt;\r\n&lt;li style=&quot;text-align: left;&quot;&gt;Luxuriously smooth texture that effortlessly glides onto your skin, leaving it instantly radiant and hydrated from the very first application.&lt;/li&gt;\r\n&lt;li style=&quot;text-align: left;&quot;&gt;Alluring fragrance that will captivate your senses.&lt;/li&gt;\r\n&lt;li style=&quot;text-align: left;&quot;&gt;Suitable for all skin types and can be used around the eyes, on the face, and neck.&lt;/li&gt;\r\n&lt;/ul&gt;', '30ml / 1 fl.oz', NULL, '&lt;ol&gt;\r\n&lt;li&gt;In the &lt;span style=&quot;text-decoration: underline;&quot;&gt;evening&lt;/span&gt; after cleaning, apply &lt;span style=&quot;text-decoration: underline;&quot;&gt;5-6 drops&lt;/span&gt; to dry face, neck, eyes, and chest before other anti-aging skincare products.&lt;/li&gt;\r\n&lt;li&gt;During the &lt;span style=&quot;text-decoration: underline;&quot;&gt;initial two weeks&lt;/span&gt;, apply &lt;span style=&quot;text-decoration: underline;&quot;&gt;three times per week&lt;/span&gt;. &lt;span style=&quot;text-decoration: underline;&quot;&gt;Afterward&lt;/span&gt;, transition to&lt;span style=&quot;text-decoration: underline;&quot;&gt; daily use&lt;/span&gt; for optimal results.&lt;/li&gt;\r\n&lt;li&gt;Complete your regimen with a INFERA&amp;rsquo;s Multi Peptide Eye Cream and Super Lift Cream.&lt;/li&gt;\r\n&lt;/ol&gt;', NULL, '&lt;p&gt;1&lt;/p&gt;', '8', '0', 'Skin care', '&lt;ul style=&quot;list-style-type: square;&quot;&gt;&lt;li&gt;Vitamin C&lt;/li&gt;&lt;li&gt;Amino acids&lt;/li&gt;&lt;li&gt;Peptide complex&lt;/li&gt;&lt;li&gt;Hyaluronic acid&lt;/li&gt;&lt;li&gt;Vitamin E&lt;/li&gt;&lt;li&gt;Calendula&lt;/li&gt;&lt;li&gt;Chamomile&lt;/li&gt;&lt;/ul&gt;', NULL, 10, '1', 'product_01703041314.jpg', '', '1', '', 'An advanced and powerful serum featuring a remarkably stable high concentration of Vitamin C that resists oxidation. Renowned for its skin-brightening properties and antioxidant benefits, this vitamin aids in diminishing pigmentation spots while offering protection against free radicals. The serum is specifically formulated to reduce the visibility of wrinkles and lines, illuminate pigmentation spots, restore and renew the skin, provide moisture, and enhance overall radiance. Enriched with a  blend of active ingredients, including amino acids, peptides, hyaluronic acid, vitamin E, calendula, and chamomile, this serum is suitable for all skin types, offering a comprehensive solution for revitalized and nourished skin.', 'bla bla', '&lt;p style=&quot;font-weight: 400;&quot;&gt;Renowned for its skin-brightening properties and antioxidant benefits, this vitamin aids in diminishing pigmentation spots while offering protection against free radicals, combating oxidative stress, and revealing visible anti-aging effects. It enhances skin tone and radiance, while boosting natural collagen production. Promoting cell regeneration, it aids the body&#039;s innate recovery system, delivering firmness, moisture, and a radiant glow for truly revitalized skin.&lt;/p&gt;', 'bla bla', 158.00, 110.00, '', 126.00, '&lt;p&gt;0&lt;/p&gt;', 142.00, '&lt;p&gt;0&lt;/p&gt;', 150.00, '&lt;p&gt;0&lt;/p&gt;'),
(20, 'Multi Peptide Eye Cream', '&lt;p style=&quot;font-weight: 400;&quot;&gt;&lt;strong&gt;30ml&lt;/strong&gt;&lt;/p&gt;', 'Lorem ipsum', '45', NULL, 'Hdhdh', NULL, 'Hdhdhd', '8', '21', 'Bdhdhd', 'Hdhdh', NULL, 10, '1', 'product_01703041500.jpg', '', '1', '', 'Introducing a multifunctional gel cream suitable for all skin types, specifically crafted for the sensitive eye area. This advance formula, enriched with powerful peptides, addresses four essential purposes: overall eye care, brightening dark circles, minimizing wrinkles, and alleviating puffiness. A comprehensive solution for rejuvenated and revitalized eyes with the added benefit of peptides working deep within the skin.', '', 'Jdhdh', '', 131.00, 92.00, '', 104.00, '23', 118.00, '20', 13.00, '25'),
(21, 'Hyaluronic Boosting Serum', '<p style=\"font-weight: 400;\"><strong>Hyaluronic Acid &amp; Peptide Complex</strong></p>\r\n<p style=\"font-weight: 400;\"><strong>30ml</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 10, '1', 'product_01703041675.jpg', '', '1', 'www.infera-us.com', 'An innovative and irresistibly captivating serum crafted with active ingredients for deeply rejuvenating moisturization and nourishment. This exceptional formula features a synergistic blend of hyaluronic acid and a peptide complex, working harmoniously to bolster collagen tissue, enhance skin elasticity, firm the complexion, and visibly diminish the appearance of wrinkles. Suitable for all skin types, this serum offers a luxurious and comprehensive approach to skincare.', '', '', '', 165.00, 115.00, NULL, 132.00, NULL, 148.00, NULL, NULL, NULL),
(22, 'AHA Repair Serum', '<p style=\"font-weight: 400;\"><strong>Renewal &amp; Repair</strong></p>\r\n<p style=\"font-weight: 400;\"><strong>30ml</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 10, '1', 'product_01703041809.jpg', '', '1', '', 'A cutting-edge serum infused with alpha and beta hydroxy acids designed to delicately and selectively dissolve the intercellular membrane, promoting a gradual yet effective skin exfoliation. This targeted approach enhances the overall benefits of facial skincare. Specifically, lactic acid plays a pivotal role in renewing skin cells, resulting in improved texture and tone. The removal of dead cells facilitates pore opening, optimizing the absorption of moisturizers for a more nourished complexion. Suitable for all skin types, this serum offers a comprehensive solution to elevate your skincare routine.', '', '', '', 131.00, 92.00, NULL, 105.00, NULL, 118.00, NULL, NULL, NULL),
(23, 'Super Lift Cream', '&lt;p style=&quot;font-weight: 400;&quot;&gt;&lt;strong&gt;Hydrating &amp;amp; Firming&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p style=&quot;font-weight: 400;&quot;&gt;&amp;nbsp;&lt;/p&gt;', '', '50ml', NULL, '', 'product_170659441345.mp4', 'qw', '6', '12', '356356', 'we', NULL, 10, '1', 'product_01703042023.jpg', '', '1', '', 'Introducing an advanced formula for a luxurious cream with nourishing amino acids and multi-peptides. This powerful blend supports elastin fibers and collagen tissue, promoting skin regeneration, brightening, and firming. The cream deeply nourishes, moisturizes, and diminishes wrinkles, resulting in radiant, fortified skin. Suitable for all skin types, it offers a comprehensive solution for a revitalized appearance.', '', '', '', 113.00, 0.00, '', 0.00, '', 0.00, '', 536356.00, '&lt;p&gt;536536&lt;/p&gt;'),
(24, 'Test product Care', '<p class=\"preFade fadeIn\">Protect your new Test product device against any accident</p>\r\n<p class=\"preFade fadeIn\">You will be covered for two accidental damage claims</p>\r\n<ul data-rte-list=\"default\">\r\n<li>\r\n<p class=\"preFade fadeIn\">Water Damage</p>\r\n</li>\r\n<li>\r\n<p class=\"preFade fadeIn\">Accidental Damage</p>\r\n</li>\r\n</ul>', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 11, '0', 'product_01703042991.png', '', '1', '', '', '', '', '', 149.00, 0.00, NULL, 0.00, NULL, 0.00, NULL, NULL, NULL),
(25, 'USB C Cable Test product', '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 6, '0', 'product_01703043594.avif', '', '1', '', '', '', '', '', 15.00, 0.00, NULL, 0.00, NULL, 0.00, NULL, NULL, NULL),
(26, 'Micro USB for Test product mini', '&lt;p&gt;lorem ipsumi&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Dolor sit amet&lt;/strong&gt;&lt;/p&gt;', NULL, NULL, NULL, NULL, NULL, NULL, '', '0', NULL, NULL, NULL, 6, '0', 'product_01703043893.webp', '15', '1', '', '', '', '', '', 15.00, 0.00, NULL, 0.00, NULL, 0.00, NULL, NULL, NULL),
(34, 'Test Skin Product', '&lt;p&gt;Test Skin Product dsc&lt;/p&gt;', '&lt;p&gt;Test Skin Product dsc&lt;/p&gt;', '23', NULL, '&lt;p&gt;Test Skin Product dsc&lt;/p&gt;', NULL, 'test tips', '8,7', '12', 'Test Aricles', 'Tset key', NULL, 10, '1', 'product_170843045020.png', NULL, '1', NULL, NULL, NULL, '&lt;p&gt;Test Skin Product dsc&lt;/p&gt;', NULL, 23.00, 12.00, '&lt;p&gt;Test Skin Product dsc&lt;/p&gt;', 23.00, '&lt;p&gt;Test Skin Product dsc&lt;/p&gt;', 12.00, '&lt;p&gt;Test Skin Product dsc&lt;/p&gt;', 12.00, '&lt;p&gt;Test Skin Product dsc&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

CREATE TABLE `promotion` (
  `id` int(11) NOT NULL,
  `promotion_title` varchar(255) NOT NULL,
  `promotion_description` varchar(255) NOT NULL,
  `promotion_discount` varchar(255) NOT NULL,
  `promotion_price` varchar(255) NOT NULL,
  `promotion_code` varchar(255) NOT NULL,
  `promotion_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `promotion`
--

INSERT INTO `promotion` (`id`, `promotion_title`, `promotion_description`, `promotion_discount`, `promotion_price`, `promotion_code`, `promotion_image`) VALUES
(12, 'test', '<p>test</p>', '11', '1222', 'zqXmz6', 'iconmonstr-arrow-24-240.png');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `purchase_id` int(11) NOT NULL,
  `final_price` decimal(10,2) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `discount_code` varchar(50) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `selected_option` varchar(20) NOT NULL,
  `purchase_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reminder`
--

CREATE TABLE `reminder` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `days` varchar(250) DEFAULT NULL,
  `morning_time` varchar(15) DEFAULT NULL,
  `evening_time` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE `shipping` (
  `shipping_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `l_name` varchar(255) NOT NULL,
  `street_address` varchar(255) NOT NULL,
  `address_line` int(11) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zipcode` int(11) NOT NULL,
  `phone_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shipping`
--

INSERT INTO `shipping` (`shipping_id`, `user_id`, `f_name`, `l_name`, `street_address`, `address_line`, `city`, `state`, `zipcode`, `phone_number`) VALUES
(2, 2, 'Test First Name', 'Test Last Name', 'Test street line', 0, 'Test city', 'Test State', 136135, 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `strings`
--

CREATE TABLE `strings` (
  `st_id` int(11) NOT NULL,
  `st_aboutus` text NOT NULL,
  `st_privacypolicy` text NOT NULL,
  `st_termsofservice` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `strings`
--

INSERT INTO `strings` (`st_id`, `st_aboutus`, `st_privacypolicy`, `st_termsofservice`) VALUES
(0, '<p><strong>About Us</strong></p><p><em>What is Lorem Ipsum?</em></p><p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p><em>Why do we use it?</em></p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '<p><strong>Privacy Policy</strong></p><p><em>What is Lorem Ipsum?</em></p><p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p><em>Why do we use it?</em></p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '<p><strong>Terms of Service</strong></p><p><em>What is Lorem Ipsum?</em></p><p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p><em>Why do we use it?</em></p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `tag_id` int(11) NOT NULL,
  `tag_title` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`tag_id`, `tag_title`) VALUES
(6, 'SkinCare'),
(7, 'Blue Light Therapy'),
(8, 'Infrared Light Therapy');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `type_id` int(11) NOT NULL,
  `type_title` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`type_id`, `type_title`) VALUES
(6, 'Accesories'),
(8, 'Devices'),
(10, 'Skin Care'),
(11, 'Accidental Warranty'),
(12, 'Packages');

-- --------------------------------------------------------

--
-- Table structure for table `we_day1`
--

CREATE TABLE `we_day1` (
  `exercise_id` int(11) NOT NULL,
  `workout_id` int(11) NOT NULL,
  `day_1` int(11) NOT NULL,
  `eorder` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `we_day1`
--

INSERT INTO `we_day1` (`exercise_id`, `workout_id`, `day_1`, `eorder`) VALUES
(1, 1, 1, '1'),
(2, 1, 1, '1'),
(3, 1, 1, '1'),
(4, 1, 1, '1'),
(1, 2, 1, '1'),
(5, 2, 1, '1'),
(12, 2, 1, '1'),
(2, 3, 1, '1'),
(6, 3, 1, '1'),
(12, 3, 1, '1'),
(16, 3, 1, '1'),
(4, 4, 1, '1'),
(6, 4, 1, '1'),
(7, 4, 1, '1'),
(13, 4, 1, '1'),
(1, 5, 1, '1'),
(3, 5, 1, '1'),
(5, 5, 1, '1'),
(6, 5, 1, '1'),
(3, 6, 1, '1'),
(4, 6, 1, '1'),
(5, 6, 1, '1'),
(9, 6, 1, '1'),
(2, 8, 1, '1'),
(4, 8, 1, '1'),
(6, 8, 1, '1'),
(17, 8, 1, '1'),
(2, 9, 1, '1'),
(4, 9, 1, '1'),
(6, 9, 1, '1'),
(7, 9, 1, '1'),
(3, 10, 1, '1'),
(6, 10, 1, '1'),
(14, 10, 1, '1'),
(16, 10, 1, '1'),
(3, 11, 1, '1'),
(4, 11, 1, '1'),
(9, 11, 1, '1'),
(2, 12, 1, '1'),
(5, 12, 1, '1'),
(6, 12, 1, '1'),
(11, 12, 1, '1'),
(17, 12, 1, '1'),
(1, 13, 1, '1'),
(4, 13, 1, '1'),
(5, 13, 1, '1'),
(6, 13, 1, '1'),
(1, 14, 1, '1'),
(3, 14, 1, '1'),
(5, 14, 1, '1'),
(9, 14, 1, '1'),
(5, 15, 1, '1'),
(15, 15, 1, '1'),
(16, 15, 1, '1'),
(17, 15, 1, '1'),
(2, 7, 1, '1'),
(3, 7, 1, '1'),
(5, 7, 1, '1'),
(11, 7, 1, '1'),
(3, 16, 1, '1'),
(5, 16, 1, '2'),
(2, 16, 1, '0'),
(1, 1, 1, '1'),
(2, 1, 1, '1'),
(3, 1, 1, '1'),
(4, 1, 1, '1'),
(1, 2, 1, '1'),
(5, 2, 1, '1'),
(12, 2, 1, '1'),
(2, 3, 1, '1'),
(6, 3, 1, '1'),
(12, 3, 1, '1'),
(16, 3, 1, '1'),
(4, 4, 1, '1'),
(6, 4, 1, '1'),
(7, 4, 1, '1'),
(13, 4, 1, '1'),
(1, 5, 1, '1'),
(3, 5, 1, '1'),
(5, 5, 1, '1'),
(6, 5, 1, '1'),
(3, 6, 1, '1'),
(4, 6, 1, '1'),
(5, 6, 1, '1'),
(9, 6, 1, '1'),
(2, 8, 1, '1'),
(4, 8, 1, '1'),
(6, 8, 1, '1'),
(17, 8, 1, '1'),
(2, 9, 1, '1'),
(4, 9, 1, '1'),
(6, 9, 1, '1'),
(7, 9, 1, '1'),
(3, 10, 1, '1'),
(6, 10, 1, '1'),
(14, 10, 1, '1'),
(16, 10, 1, '1'),
(3, 11, 1, '1'),
(4, 11, 1, '1'),
(9, 11, 1, '1'),
(2, 12, 1, '1'),
(5, 12, 1, '1'),
(6, 12, 1, '1'),
(11, 12, 1, '1'),
(17, 12, 1, '1'),
(1, 13, 1, '1'),
(4, 13, 1, '1'),
(5, 13, 1, '1'),
(6, 13, 1, '1'),
(1, 14, 1, '1'),
(3, 14, 1, '1'),
(5, 14, 1, '1'),
(9, 14, 1, '1'),
(5, 15, 1, '1'),
(15, 15, 1, '1'),
(16, 15, 1, '1'),
(17, 15, 1, '1'),
(2, 7, 1, '1'),
(3, 7, 1, '1'),
(5, 7, 1, '1'),
(11, 7, 1, '1'),
(3, 16, 1, '1'),
(5, 16, 1, '2'),
(2, 16, 1, '0'),
(1, 1, 1, '1'),
(2, 1, 1, '1'),
(3, 1, 1, '1'),
(4, 1, 1, '1'),
(1, 2, 1, '1'),
(5, 2, 1, '1'),
(12, 2, 1, '1'),
(2, 3, 1, '1'),
(6, 3, 1, '1'),
(12, 3, 1, '1'),
(16, 3, 1, '1'),
(4, 4, 1, '1'),
(6, 4, 1, '1'),
(7, 4, 1, '1'),
(13, 4, 1, '1'),
(1, 5, 1, '1'),
(3, 5, 1, '1'),
(5, 5, 1, '1'),
(6, 5, 1, '1'),
(3, 6, 1, '1'),
(4, 6, 1, '1'),
(5, 6, 1, '1'),
(9, 6, 1, '1'),
(2, 8, 1, '1'),
(4, 8, 1, '1'),
(6, 8, 1, '1'),
(17, 8, 1, '1'),
(2, 9, 1, '1'),
(4, 9, 1, '1'),
(6, 9, 1, '1'),
(7, 9, 1, '1'),
(3, 10, 1, '1'),
(6, 10, 1, '1'),
(14, 10, 1, '1'),
(16, 10, 1, '1'),
(3, 11, 1, '1'),
(4, 11, 1, '1'),
(9, 11, 1, '1'),
(2, 12, 1, '1'),
(5, 12, 1, '1'),
(6, 12, 1, '1'),
(11, 12, 1, '1'),
(17, 12, 1, '1'),
(1, 13, 1, '1'),
(4, 13, 1, '1'),
(5, 13, 1, '1'),
(6, 13, 1, '1'),
(1, 14, 1, '1'),
(3, 14, 1, '1'),
(5, 14, 1, '1'),
(9, 14, 1, '1'),
(5, 15, 1, '1'),
(15, 15, 1, '1'),
(16, 15, 1, '1'),
(17, 15, 1, '1'),
(2, 7, 1, '1'),
(3, 7, 1, '1'),
(5, 7, 1, '1'),
(11, 7, 1, '1'),
(3, 16, 1, '1'),
(5, 16, 1, '2'),
(2, 16, 1, '0'),
(1, 1, 1, '1'),
(2, 1, 1, '1'),
(3, 1, 1, '1'),
(4, 1, 1, '1'),
(1, 2, 1, '1'),
(5, 2, 1, '1'),
(12, 2, 1, '1'),
(2, 3, 1, '1'),
(6, 3, 1, '1'),
(12, 3, 1, '1'),
(16, 3, 1, '1'),
(4, 4, 1, '1'),
(6, 4, 1, '1'),
(7, 4, 1, '1'),
(13, 4, 1, '1'),
(1, 5, 1, '1'),
(3, 5, 1, '1'),
(5, 5, 1, '1'),
(6, 5, 1, '1'),
(3, 6, 1, '1'),
(4, 6, 1, '1'),
(5, 6, 1, '1'),
(9, 6, 1, '1'),
(2, 8, 1, '1'),
(4, 8, 1, '1'),
(6, 8, 1, '1'),
(17, 8, 1, '1'),
(2, 9, 1, '1'),
(4, 9, 1, '1'),
(6, 9, 1, '1'),
(7, 9, 1, '1'),
(3, 10, 1, '1'),
(6, 10, 1, '1'),
(14, 10, 1, '1'),
(16, 10, 1, '1'),
(3, 11, 1, '1'),
(4, 11, 1, '1'),
(9, 11, 1, '1'),
(2, 12, 1, '1'),
(5, 12, 1, '1'),
(6, 12, 1, '1'),
(11, 12, 1, '1'),
(17, 12, 1, '1'),
(1, 13, 1, '1'),
(4, 13, 1, '1'),
(5, 13, 1, '1'),
(6, 13, 1, '1'),
(1, 14, 1, '1'),
(3, 14, 1, '1'),
(5, 14, 1, '1'),
(9, 14, 1, '1'),
(5, 15, 1, '1'),
(15, 15, 1, '1'),
(16, 15, 1, '1'),
(17, 15, 1, '1'),
(2, 7, 1, '1'),
(3, 7, 1, '1'),
(5, 7, 1, '1'),
(11, 7, 1, '1'),
(3, 16, 1, '1'),
(5, 16, 1, '2'),
(2, 16, 1, '0'),
(1, 1, 1, '1'),
(2, 1, 1, '1'),
(3, 1, 1, '1'),
(4, 1, 1, '1'),
(1, 2, 1, '1'),
(5, 2, 1, '1'),
(12, 2, 1, '1'),
(2, 3, 1, '1'),
(6, 3, 1, '1'),
(12, 3, 1, '1'),
(16, 3, 1, '1'),
(4, 4, 1, '1'),
(6, 4, 1, '1'),
(7, 4, 1, '1'),
(13, 4, 1, '1'),
(1, 5, 1, '1'),
(3, 5, 1, '1'),
(5, 5, 1, '1'),
(6, 5, 1, '1'),
(3, 6, 1, '1'),
(4, 6, 1, '1'),
(5, 6, 1, '1'),
(9, 6, 1, '1'),
(2, 8, 1, '1'),
(4, 8, 1, '1'),
(6, 8, 1, '1'),
(17, 8, 1, '1'),
(2, 9, 1, '1'),
(4, 9, 1, '1'),
(6, 9, 1, '1'),
(7, 9, 1, '1'),
(3, 10, 1, '1'),
(6, 10, 1, '1'),
(14, 10, 1, '1'),
(16, 10, 1, '1'),
(3, 11, 1, '1'),
(4, 11, 1, '1'),
(9, 11, 1, '1'),
(2, 12, 1, '1'),
(5, 12, 1, '1'),
(6, 12, 1, '1'),
(11, 12, 1, '1'),
(17, 12, 1, '1'),
(1, 13, 1, '1'),
(4, 13, 1, '1'),
(5, 13, 1, '1'),
(6, 13, 1, '1'),
(1, 14, 1, '1'),
(3, 14, 1, '1'),
(5, 14, 1, '1'),
(9, 14, 1, '1'),
(5, 15, 1, '1'),
(15, 15, 1, '1'),
(16, 15, 1, '1'),
(17, 15, 1, '1'),
(2, 7, 1, '1'),
(3, 7, 1, '1'),
(5, 7, 1, '1'),
(11, 7, 1, '1'),
(3, 16, 1, '1'),
(5, 16, 1, '2'),
(2, 16, 1, '0'),
(1, 1, 1, '1'),
(2, 1, 1, '1'),
(3, 1, 1, '1'),
(4, 1, 1, '1'),
(1, 2, 1, '1'),
(5, 2, 1, '1'),
(12, 2, 1, '1'),
(2, 3, 1, '1'),
(6, 3, 1, '1'),
(12, 3, 1, '1'),
(16, 3, 1, '1'),
(4, 4, 1, '1'),
(6, 4, 1, '1'),
(7, 4, 1, '1'),
(13, 4, 1, '1'),
(1, 5, 1, '1'),
(3, 5, 1, '1'),
(5, 5, 1, '1'),
(6, 5, 1, '1'),
(3, 6, 1, '1'),
(4, 6, 1, '1'),
(5, 6, 1, '1'),
(9, 6, 1, '1'),
(2, 8, 1, '1'),
(4, 8, 1, '1'),
(6, 8, 1, '1'),
(17, 8, 1, '1'),
(2, 9, 1, '1'),
(4, 9, 1, '1'),
(6, 9, 1, '1'),
(7, 9, 1, '1'),
(3, 10, 1, '1'),
(6, 10, 1, '1'),
(14, 10, 1, '1'),
(16, 10, 1, '1'),
(3, 11, 1, '1'),
(4, 11, 1, '1'),
(9, 11, 1, '1'),
(2, 12, 1, '1'),
(5, 12, 1, '1'),
(6, 12, 1, '1'),
(11, 12, 1, '1'),
(17, 12, 1, '1'),
(1, 13, 1, '1'),
(4, 13, 1, '1'),
(5, 13, 1, '1'),
(6, 13, 1, '1'),
(1, 14, 1, '1'),
(3, 14, 1, '1'),
(5, 14, 1, '1'),
(9, 14, 1, '1'),
(5, 15, 1, '1'),
(15, 15, 1, '1'),
(16, 15, 1, '1'),
(17, 15, 1, '1'),
(2, 7, 1, '1'),
(3, 7, 1, '1'),
(5, 7, 1, '1'),
(11, 7, 1, '1'),
(3, 16, 1, '1'),
(5, 16, 1, '2'),
(2, 16, 1, '0');

-- --------------------------------------------------------

--
-- Table structure for table `we_day2`
--

CREATE TABLE `we_day2` (
  `exercise_id` int(11) NOT NULL,
  `workout_id` int(11) NOT NULL,
  `day_2` int(11) NOT NULL,
  `eorder` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `we_day2`
--

INSERT INTO `we_day2` (`exercise_id`, `workout_id`, `day_2`, `eorder`) VALUES
(3, 15, 2, NULL),
(4, 15, 2, NULL),
(7, 15, 2, NULL),
(10, 15, 2, NULL),
(3, 15, 2, NULL),
(4, 15, 2, NULL),
(7, 15, 2, NULL),
(10, 15, 2, NULL),
(3, 15, 2, NULL),
(4, 15, 2, NULL),
(7, 15, 2, NULL),
(10, 15, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `we_day3`
--

CREATE TABLE `we_day3` (
  `exercise_id` int(11) NOT NULL,
  `workout_id` int(11) NOT NULL,
  `day_3` int(11) NOT NULL,
  `eorder` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `we_day3`
--

INSERT INTO `we_day3` (`exercise_id`, `workout_id`, `day_3`, `eorder`) VALUES
(9, 1, 3, NULL),
(10, 1, 3, NULL),
(11, 1, 3, NULL),
(13, 1, 3, NULL),
(3, 2, 3, NULL),
(14, 2, 3, NULL),
(16, 2, 3, NULL),
(1, 3, 3, NULL),
(2, 3, 3, NULL),
(17, 3, 3, NULL),
(19, 3, 3, NULL),
(2, 4, 3, NULL),
(11, 4, 3, NULL),
(16, 4, 3, NULL),
(18, 4, 3, NULL),
(3, 5, 3, NULL),
(16, 5, 3, NULL),
(18, 5, 3, NULL),
(19, 5, 3, NULL),
(2, 6, 3, NULL),
(3, 6, 3, NULL),
(6, 6, 3, NULL),
(12, 6, 3, NULL),
(3, 8, 3, NULL),
(5, 8, 3, NULL),
(10, 8, 3, NULL),
(15, 8, 3, NULL),
(2, 9, 3, NULL),
(3, 9, 3, NULL),
(6, 9, 3, NULL),
(13, 9, 3, NULL),
(4, 10, 3, NULL),
(6, 10, 3, NULL),
(12, 10, 3, NULL),
(15, 10, 3, NULL),
(2, 11, 3, NULL),
(10, 11, 3, NULL),
(16, 11, 3, NULL),
(3, 12, 3, NULL),
(6, 12, 3, NULL),
(7, 12, 3, NULL),
(11, 12, 3, NULL),
(3, 13, 3, NULL),
(4, 13, 3, NULL),
(12, 13, 3, NULL),
(2, 14, 3, NULL),
(3, 14, 3, NULL),
(5, 14, 3, NULL),
(10, 14, 3, NULL),
(6, 7, 3, NULL),
(11, 7, 3, NULL),
(12, 7, 3, NULL),
(15, 7, 3, NULL),
(3, 16, 3, '1'),
(10, 16, 3, '0'),
(16, 16, 3, '2'),
(9, 1, 3, NULL),
(10, 1, 3, NULL),
(11, 1, 3, NULL),
(13, 1, 3, NULL),
(3, 2, 3, NULL),
(14, 2, 3, NULL),
(16, 2, 3, NULL),
(1, 3, 3, NULL),
(2, 3, 3, NULL),
(17, 3, 3, NULL),
(19, 3, 3, NULL),
(2, 4, 3, NULL),
(11, 4, 3, NULL),
(16, 4, 3, NULL),
(18, 4, 3, NULL),
(3, 5, 3, NULL),
(16, 5, 3, NULL),
(18, 5, 3, NULL),
(19, 5, 3, NULL),
(2, 6, 3, NULL),
(3, 6, 3, NULL),
(6, 6, 3, NULL),
(12, 6, 3, NULL),
(3, 8, 3, NULL),
(5, 8, 3, NULL),
(10, 8, 3, NULL),
(15, 8, 3, NULL),
(2, 9, 3, NULL),
(3, 9, 3, NULL),
(6, 9, 3, NULL),
(13, 9, 3, NULL),
(4, 10, 3, NULL),
(6, 10, 3, NULL),
(12, 10, 3, NULL),
(15, 10, 3, NULL),
(2, 11, 3, NULL),
(10, 11, 3, NULL),
(16, 11, 3, NULL),
(3, 12, 3, NULL),
(6, 12, 3, NULL),
(7, 12, 3, NULL),
(11, 12, 3, NULL),
(3, 13, 3, NULL),
(4, 13, 3, NULL),
(12, 13, 3, NULL),
(2, 14, 3, NULL),
(3, 14, 3, NULL),
(5, 14, 3, NULL),
(10, 14, 3, NULL),
(6, 7, 3, NULL),
(11, 7, 3, NULL),
(12, 7, 3, NULL),
(15, 7, 3, NULL),
(3, 16, 3, '1'),
(10, 16, 3, '0'),
(16, 16, 3, '2'),
(9, 1, 3, NULL),
(10, 1, 3, NULL),
(11, 1, 3, NULL),
(13, 1, 3, NULL),
(3, 2, 3, NULL),
(14, 2, 3, NULL),
(16, 2, 3, NULL),
(1, 3, 3, NULL),
(2, 3, 3, NULL),
(17, 3, 3, NULL),
(19, 3, 3, NULL),
(2, 4, 3, NULL),
(11, 4, 3, NULL),
(16, 4, 3, NULL),
(18, 4, 3, NULL),
(3, 5, 3, NULL),
(16, 5, 3, NULL),
(18, 5, 3, NULL),
(19, 5, 3, NULL),
(2, 6, 3, NULL),
(3, 6, 3, NULL),
(6, 6, 3, NULL),
(12, 6, 3, NULL),
(3, 8, 3, NULL),
(5, 8, 3, NULL),
(10, 8, 3, NULL),
(15, 8, 3, NULL),
(2, 9, 3, NULL),
(3, 9, 3, NULL),
(6, 9, 3, NULL),
(13, 9, 3, NULL),
(4, 10, 3, NULL),
(6, 10, 3, NULL),
(12, 10, 3, NULL),
(15, 10, 3, NULL),
(2, 11, 3, NULL),
(10, 11, 3, NULL),
(16, 11, 3, NULL),
(3, 12, 3, NULL),
(6, 12, 3, NULL),
(7, 12, 3, NULL),
(11, 12, 3, NULL),
(3, 13, 3, NULL),
(4, 13, 3, NULL),
(12, 13, 3, NULL),
(2, 14, 3, NULL),
(3, 14, 3, NULL),
(5, 14, 3, NULL),
(10, 14, 3, NULL),
(6, 7, 3, NULL),
(11, 7, 3, NULL),
(12, 7, 3, NULL),
(15, 7, 3, NULL),
(3, 16, 3, '1'),
(10, 16, 3, '0'),
(16, 16, 3, '2');

-- --------------------------------------------------------

--
-- Table structure for table `we_day4`
--

CREATE TABLE `we_day4` (
  `exercise_id` int(11) NOT NULL,
  `workout_id` int(11) NOT NULL,
  `day_4` int(11) NOT NULL,
  `eorder` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `we_day4`
--

INSERT INTO `we_day4` (`exercise_id`, `workout_id`, `day_4`, `eorder`) VALUES
(2, 15, 4, NULL),
(5, 15, 4, NULL),
(7, 15, 4, NULL),
(12, 15, 4, NULL),
(2, 15, 4, NULL),
(5, 15, 4, NULL),
(7, 15, 4, NULL),
(12, 15, 4, NULL),
(2, 15, 4, NULL),
(5, 15, 4, NULL),
(7, 15, 4, NULL),
(12, 15, 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `we_day5`
--

CREATE TABLE `we_day5` (
  `exercise_id` int(11) NOT NULL,
  `workout_id` int(11) NOT NULL,
  `day_5` int(11) NOT NULL,
  `eorder` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `we_day5`
--

INSERT INTO `we_day5` (`exercise_id`, `workout_id`, `day_5`, `eorder`) VALUES
(15, 1, 5, NULL),
(16, 1, 5, NULL),
(18, 1, 5, NULL),
(19, 1, 5, NULL),
(3, 2, 5, NULL),
(5, 2, 5, NULL),
(6, 2, 5, NULL),
(9, 2, 5, NULL),
(3, 3, 5, NULL),
(6, 3, 5, NULL),
(11, 3, 5, NULL),
(14, 3, 5, NULL),
(3, 4, 5, NULL),
(15, 4, 5, NULL),
(17, 4, 5, NULL),
(18, 4, 5, NULL),
(3, 5, 5, NULL),
(4, 5, 5, NULL),
(6, 5, 5, NULL),
(10, 5, 5, NULL),
(3, 6, 5, NULL),
(10, 6, 5, NULL),
(12, 6, 5, NULL),
(15, 6, 5, NULL),
(3, 8, 5, NULL),
(4, 8, 5, NULL),
(7, 8, 5, NULL),
(15, 8, 5, NULL),
(2, 9, 5, NULL),
(3, 9, 5, NULL),
(4, 9, 5, NULL),
(16, 9, 5, NULL),
(3, 10, 5, NULL),
(7, 10, 5, NULL),
(16, 10, 5, NULL),
(19, 10, 5, NULL),
(12, 11, 5, NULL),
(13, 11, 5, NULL),
(16, 11, 5, NULL),
(18, 11, 5, NULL),
(3, 12, 5, NULL),
(6, 12, 5, NULL),
(7, 12, 5, NULL),
(11, 12, 5, NULL),
(14, 13, 5, NULL),
(16, 13, 5, NULL),
(18, 13, 5, NULL),
(6, 14, 5, NULL),
(16, 14, 5, NULL),
(18, 14, 5, NULL),
(19, 14, 5, NULL),
(15, 7, 5, NULL),
(16, 7, 5, NULL),
(17, 7, 5, NULL),
(18, 7, 5, NULL),
(2, 16, 5, '1'),
(3, 16, 5, '2'),
(4, 16, 5, '0'),
(15, 1, 5, NULL),
(16, 1, 5, NULL),
(18, 1, 5, NULL),
(19, 1, 5, NULL),
(3, 2, 5, NULL),
(5, 2, 5, NULL),
(6, 2, 5, NULL),
(9, 2, 5, NULL),
(3, 3, 5, NULL),
(6, 3, 5, NULL),
(11, 3, 5, NULL),
(14, 3, 5, NULL),
(3, 4, 5, NULL),
(15, 4, 5, NULL),
(17, 4, 5, NULL),
(18, 4, 5, NULL),
(3, 5, 5, NULL),
(4, 5, 5, NULL),
(6, 5, 5, NULL),
(10, 5, 5, NULL),
(3, 6, 5, NULL),
(10, 6, 5, NULL),
(12, 6, 5, NULL),
(15, 6, 5, NULL),
(3, 8, 5, NULL),
(4, 8, 5, NULL),
(7, 8, 5, NULL),
(15, 8, 5, NULL),
(2, 9, 5, NULL),
(3, 9, 5, NULL),
(4, 9, 5, NULL),
(16, 9, 5, NULL),
(3, 10, 5, NULL),
(7, 10, 5, NULL),
(16, 10, 5, NULL),
(19, 10, 5, NULL),
(12, 11, 5, NULL),
(13, 11, 5, NULL),
(16, 11, 5, NULL),
(18, 11, 5, NULL),
(3, 12, 5, NULL),
(6, 12, 5, NULL),
(7, 12, 5, NULL),
(11, 12, 5, NULL),
(14, 13, 5, NULL),
(16, 13, 5, NULL),
(18, 13, 5, NULL),
(6, 14, 5, NULL),
(16, 14, 5, NULL),
(18, 14, 5, NULL),
(19, 14, 5, NULL),
(15, 7, 5, NULL),
(16, 7, 5, NULL),
(17, 7, 5, NULL),
(18, 7, 5, NULL),
(2, 16, 5, '1'),
(3, 16, 5, '2'),
(4, 16, 5, '0'),
(15, 1, 5, NULL),
(16, 1, 5, NULL),
(18, 1, 5, NULL),
(19, 1, 5, NULL),
(3, 2, 5, NULL),
(5, 2, 5, NULL),
(6, 2, 5, NULL),
(9, 2, 5, NULL),
(3, 3, 5, NULL),
(6, 3, 5, NULL),
(11, 3, 5, NULL),
(14, 3, 5, NULL),
(3, 4, 5, NULL),
(15, 4, 5, NULL),
(17, 4, 5, NULL),
(18, 4, 5, NULL),
(3, 5, 5, NULL),
(4, 5, 5, NULL),
(6, 5, 5, NULL),
(10, 5, 5, NULL),
(3, 6, 5, NULL),
(10, 6, 5, NULL),
(12, 6, 5, NULL),
(15, 6, 5, NULL),
(3, 8, 5, NULL),
(4, 8, 5, NULL),
(7, 8, 5, NULL),
(15, 8, 5, NULL),
(2, 9, 5, NULL),
(3, 9, 5, NULL),
(4, 9, 5, NULL),
(16, 9, 5, NULL),
(3, 10, 5, NULL),
(7, 10, 5, NULL),
(16, 10, 5, NULL),
(19, 10, 5, NULL),
(12, 11, 5, NULL),
(13, 11, 5, NULL),
(16, 11, 5, NULL),
(18, 11, 5, NULL),
(3, 12, 5, NULL),
(6, 12, 5, NULL),
(7, 12, 5, NULL),
(11, 12, 5, NULL),
(14, 13, 5, NULL),
(16, 13, 5, NULL),
(18, 13, 5, NULL),
(6, 14, 5, NULL),
(16, 14, 5, NULL),
(18, 14, 5, NULL),
(19, 14, 5, NULL),
(15, 7, 5, NULL),
(16, 7, 5, NULL),
(17, 7, 5, NULL),
(18, 7, 5, NULL),
(2, 16, 5, '1'),
(3, 16, 5, '2'),
(4, 16, 5, '0');

-- --------------------------------------------------------

--
-- Table structure for table `we_day6`
--

CREATE TABLE `we_day6` (
  `exercise_id` int(11) NOT NULL,
  `workout_id` int(11) NOT NULL,
  `day_6` int(11) NOT NULL,
  `eorder` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `we_day7`
--

CREATE TABLE `we_day7` (
  `exercise_id` int(11) NOT NULL,
  `workout_id` int(11) NOT NULL,
  `day_7` int(11) NOT NULL,
  `eorder` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `we_day7`
--

INSERT INTO `we_day7` (`exercise_id`, `workout_id`, `day_7`, `eorder`) VALUES
(3, 2, 7, NULL),
(10, 2, 7, NULL),
(14, 2, 7, NULL),
(3, 3, 7, NULL),
(5, 3, 7, NULL),
(18, 3, 7, NULL),
(12, 5, 7, NULL),
(14, 5, 7, NULL),
(16, 5, 7, NULL),
(18, 5, 7, NULL),
(5, 6, 7, NULL),
(16, 6, 7, NULL),
(17, 6, 7, NULL),
(18, 6, 7, NULL),
(3, 10, 7, NULL),
(5, 10, 7, NULL),
(15, 10, 7, NULL),
(17, 10, 7, NULL),
(3, 11, 7, NULL),
(6, 11, 7, NULL),
(19, 11, 7, NULL),
(15, 12, 7, NULL),
(16, 12, 7, NULL),
(18, 12, 7, NULL),
(19, 12, 7, NULL),
(1, 14, 7, NULL),
(6, 14, 7, NULL),
(13, 14, 7, NULL),
(18, 14, 7, NULL),
(4, 7, 7, NULL),
(6, 7, 7, NULL),
(15, 7, 7, NULL),
(18, 7, 7, NULL),
(18, 16, 7, NULL),
(19, 16, 7, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `workouts`
--

CREATE TABLE `workouts` (
  `workout_id` int(11) NOT NULL,
  `workout_title` varchar(150) NOT NULL,
  `workout_description` text NOT NULL,
  `workout_goal` int(11) NOT NULL,
  `workout_level` int(11) NOT NULL,
  `workout_bodypart` int(11) NOT NULL,
  `workout_equipment` int(11) NOT NULL,
  `workout_duration` varchar(150) NOT NULL,
  `workout_status` varchar(11) NOT NULL,
  `workout_price` varchar(11) NOT NULL DEFAULT 'free',
  `workout_image` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `workouts`
--

INSERT INTO `workouts` (`workout_id`, `workout_title`, `workout_description`, `workout_goal`, `workout_level`, `workout_bodypart`, `workout_equipment`, `workout_duration`, `workout_status`, `workout_price`, `workout_image`) VALUES
(1, 'The Ultimate Dumbbell-only Biceps Workout', '<p>When someone asks you to make a muscle, chances are you don&rsquo;t flex your traps or rise onto your toes to show off your calves. You\'re going to roll up your sleeves and flex your biceps, inviting onlookers to your own personal &ldquo;gun show.&rdquo;</p>\r\n<p>And while those arm-focused articles can prove helpful, many seem to present the same basic information, which can only take your gains so far. In an effort to help you bust through your biceps-building plateaus, we\'ve got a unique approach to promote new growth for those all-important show muscles.&nbsp;</p>', 4, 2, 4, 4, '3 Days/Week', '1', '', 'workout_1519944619.jpg'),
(2, 'The 6-week Triphasic Plan for Power', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>\r\n<p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n<p>It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 4, 2, 4, 5, '4 Days/Week', '1', '', 'workout_1519945666.jpg'),
(3, 'Hardcore CrossFit Workouts', '<p>When someone asks you to make a muscle, chances are you don&rsquo;t flex your traps or rise onto your toes to show off your calves. You\'re going to roll up your sleeves and flex your biceps, inviting onlookers to your own personal &ldquo;gun show.&rdquo;</p>\r\n<p>And while those arm-focused articles can prove helpful, many seem to present the same basic information, which can only take your gains so far. In an effort to help you bust through your biceps-building plateaus, we\'ve got a unique approach to promote new growth for those all-important show muscles.&nbsp;</p>', 3, 2, 4, 6, '4 Days/Week', '1', '', 'workout_1519945022.jpg'),
(4, 'The Sling Shot Bench Press Plan', '<p>When someone asks you to make a muscle, chances are you don&rsquo;t flex your traps or rise onto your toes to show off your calves. You\'re going to roll up your sleeves and flex your biceps, inviting onlookers to your own personal &ldquo;gun show.&rdquo;</p>\r\n<p>And while those arm-focused articles can prove helpful, many seem to present the same basic information, which can only take your gains so far. In an effort to help you bust through your biceps-building plateaus, we\'ve got a unique approach to promote new growth for those all-important show muscles.&nbsp;</p>', 3, 3, 8, 6, '3 Days/Week', '1', '', 'workout_1519945561.jpg'),
(5, 'The Ultimate Bruce Lee Training Program', '<p>When someone asks you to make a muscle, chances are you don&rsquo;t flex your traps or rise onto your toes to show off your calves. You\'re going to roll up your sleeves and flex your biceps, inviting onlookers to your own personal &ldquo;gun show.&rdquo;</p>\r\n<p>And while those arm-focused articles can prove helpful, many seem to present the same basic information, which can only take your gains so far. In an effort to help you bust through your biceps-building plateaus, we\'ve got a unique approach to promote new growth for those all-important show muscles.&nbsp;</p>', 4, 3, 8, 7, '4 Days/Week', '1', '', 'workout_1519945908.jpg'),
(6, 'The 100,000-Pound Challenge', '<p>When someone asks you to make a muscle, chances are you don&rsquo;t flex your traps or rise onto your toes to show off your calves. You\'re going to roll up your sleeves and flex your biceps, inviting onlookers to your own personal &ldquo;gun show.&rdquo;</p>\r\n<p>And while those arm-focused articles can prove helpful, many seem to present the same basic information, which can only take your gains so far. In an effort to help you bust through your biceps-building plateaus, we\'ve got a unique approach to promote new growth for those all-important show muscles.&nbsp;</p>', 2, 3, 8, 8, '5 Days/Week', '1', '', 'workout_1519946537.jpg'),
(7, 'Army Ranger Workout', '<p>When someone asks you to make a muscle, chances are you don&rsquo;t flex your traps or rise onto your toes to show off your calves. You\'re going to roll up your sleeves and flex your biceps, inviting onlookers to your own personal &ldquo;gun show.&rdquo;</p>\r\n<p>And while those arm-focused articles can prove helpful, many seem to present the same basic information, which can only take your gains so far. In an effort to help you bust through your biceps-building plateaus, we\'ve got a unique approach to promote new growth for those all-important show muscles.&nbsp;</p>', 4, 4, 10, 4, '4 Days/Week', '1', 'free', 'workout_1519947040.jpg'),
(8, 'The Ultimate Conditioning Workout', '<p>When someone asks you to make a muscle, chances are you don&rsquo;t flex your traps or rise onto your toes to show off your calves. You\'re going to roll up your sleeves and flex your biceps, inviting onlookers to your own personal &ldquo;gun show.&rdquo;</p>\r\n<p>And while those arm-focused articles can prove helpful, many seem to present the same basic information, which can only take your gains so far. In an effort to help you bust through your biceps-building plateaus, we\'ve got a unique approach to promote new growth for those all-important show muscles.&nbsp;</p>', 3, 3, 9, 8, '3 Days/Week', '1', '', 'workout_1519947305.jpg'),
(9, 'The 6-Week Fat Blast', '<p>When someone asks you to make a muscle, chances are you don&rsquo;t flex your traps or rise onto your toes to show off your calves. You\'re going to roll up your sleeves and flex your biceps, inviting onlookers to your own personal &ldquo;gun show.&rdquo;</p>\r\n<p>And while those arm-focused articles can prove helpful, many seem to present the same basic information, which can only take your gains so far. In an effort to help you bust through your biceps-building plateaus, we\'ve got a unique approach to promote new growth for those all-important show muscles.&nbsp;</p>', 1, 2, 10, 5, '3 Days/Week', '1', '', 'workout_1519947591.jpg'),
(10, 'The 500-rep Challenge Routine', '<p>When someone asks you to make a muscle, chances are you don&rsquo;t flex your traps or rise onto your toes to show off your calves. You\'re going to roll up your sleeves and flex your biceps, inviting onlookers to your own personal &ldquo;gun show.&rdquo;</p>\r\n<p>And while those arm-focused articles can prove helpful, many seem to present the same basic information, which can only take your gains so far. In an effort to help you bust through your biceps-building plateaus, we\'ve got a unique approach to promote new growth for those all-important show muscles.&nbsp;</p>', 4, 4, 1, 1, '4 Days/Week', '1', '', 'workout_1519948742.jpg'),
(11, 'Ageless Muscle: Total-Body Workout', '<p>When someone asks you to make a muscle, chances are you don&rsquo;t flex your traps or rise onto your toes to show off your calves. You\'re going to roll up your sleeves and flex your biceps, inviting onlookers to your own personal &ldquo;gun show.&rdquo;</p>\r\n<p>And while those arm-focused articles can prove helpful, many seem to present the same basic information, which can only take your gains so far. In an effort to help you bust through your biceps-building plateaus, we\'ve got a unique approach to promote new growth for those all-important show muscles.&nbsp;</p>', 2, 4, 1, 1, '4 Days/Week', '1', '', 'workout_1519948891.jpg'),
(12, 'Level Up Your Triceps Routine', '<p>When someone asks you to make a muscle, chances are you don&rsquo;t flex your traps or rise onto your toes to show off your calves. You\'re going to roll up your sleeves and flex your biceps, inviting onlookers to your own personal &ldquo;gun show.&rdquo;</p>\r\n<p>And while those arm-focused articles can prove helpful, many seem to present the same basic information, which can only take your gains so far. In an effort to help you bust through your biceps-building plateaus, we\'ve got a unique approach to promote new growth for those all-important show muscles.&nbsp;</p>', 2, 4, 1, 1, '5 Days/Week', '1', '', 'workout_1519949368.jpg'),
(13, 'Top It Off With This Full-Body Finisher', '<p>When someone asks you to make a muscle, chances are you don&rsquo;t flex your traps or rise onto your toes to show off your calves. You\'re going to roll up your sleeves and flex your biceps, inviting onlookers to your own personal &ldquo;gun show.&rdquo;</p>\r\n<p>And while those arm-focused articles can prove helpful, many seem to present the same basic information, which can only take your gains so far. In an effort to help you bust through your biceps-building plateaus, we\'ve got a unique approach to promote new growth for those all-important show muscles.&nbsp;</p>', 1, 1, 2, 2, '3 Days/Week', '1', '', 'workout_1519949759.jpg'),
(14, 'Real Man\'s Cardio Workout', '<p>When someone asks you to make a muscle, chances are you don&rsquo;t flex your traps or rise onto your toes to show off your calves. You\'re going to roll up your sleeves and flex your biceps, inviting onlookers to your own personal &ldquo;gun show.&rdquo;</p>\r\n<p>And while those arm-focused articles can prove helpful, many seem to present the same basic information, which can only take your gains so far. In an effort to help you bust through your biceps-building plateaus, we\'ve got a unique approach to promote new growth for those all-important show muscles.&nbsp;</p>', 1, 1, 2, 2, '4 Days/Week', '1', '', 'workout_1519949966.jpg'),
(15, 'The Ultimate Full-Body Landmine Workout', '<p>When someone asks you to make a muscle, chances are you don&rsquo;t flex your traps or rise onto your toes to show off your calves. You\'re going to roll up your sleeves and flex your biceps, inviting onlookers to your own personal &ldquo;gun show.&rdquo;</p>\r\n<p>And while those arm-focused articles can prove helpful, many seem to present the same basic information, which can only take your gains so far. In an effort to help you bust through your biceps-building plateaus, we\'ve got a unique approach to promote new growth for those all-important show muscles.&nbsp;</p>', 1, 1, 3, 3, '3 Days/Week', '1', '', 'workout_1519950276.jpg'),
(16, 'At-Home Cardio for Fat Loss', '<p>When someone asks you to make a muscle, chances are you don&rsquo;t flex your traps or rise onto your toes to show off your calves. You\'re going to roll up your sleeves and flex your biceps, inviting onlookers to your own personal &ldquo;gun show.&rdquo;</p>\r\n<p>And while those arm-focused articles can prove helpful, many seem to present the same basic information, which can only take your gains so far. In an effort to help you bust through your biceps-building plateaus, we\'ve got a unique approach to promote new growth for those all-important show muscles.&nbsp;</p>', 3, 1, 3, 3, '4 Days/Week', '1', 'free', 'workout_1519950433.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `workouts_users`
--

CREATE TABLE `workouts_users` (
  `ws_workout` int(11) DEFAULT NULL,
  `ws_user` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `workouts_users`
--

INSERT INTO `workouts_users` (`ws_workout`, `ws_user`) VALUES
(16, '00qrWPZHTMftjxWAnCJGb26soL62'),
(16, 'PkzC4Y0PoyTn3CGHFgI9wpkR0WO2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bodyparts`
--
ALTER TABLE `bodyparts`
  ADD PRIMARY KEY (`bodypart_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `community_posts`
--
ALTER TABLE `community_posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `diets`
--
ALTER TABLE `diets`
  ADD PRIMARY KEY (`diet_id`),
  ADD KEY `FK_categories` (`diet_category`);

--
-- Indexes for table `equipments`
--
ALTER TABLE `equipments`
  ADD PRIMARY KEY (`equipment_id`);

--
-- Indexes for table `exercises`
--
ALTER TABLE `exercises`
  ADD PRIMARY KEY (`exercise_id`),
  ADD KEY `FK_exercises_equipments` (`exercise_equipment`),
  ADD KEY `FK_exercises_levels` (`exercise_level`);

--
-- Indexes for table `exercises_bodyparts`
--
ALTER TABLE `exercises_bodyparts`
  ADD KEY `FK_exercises_bodyparts_bodyparts` (`bodypart_id`),
  ADD KEY `FK_exercises_bodyparts_exercises` (`exercise_id`);

--
-- Indexes for table `fcm_tokens`
--
ALTER TABLE `fcm_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `goals`
--
ALTER TABLE `goals`
  ADD PRIMARY KEY (`goal_id`);

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`level_id`);

--
-- Indexes for table `managers`
--
ALTER TABLE `managers`
  ADD PRIMARY KEY (`manager_id`) USING BTREE,
  ADD UNIQUE KEY `user_email` (`manager_email`) USING BTREE;

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`package_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `FK_categories` (`post_tag`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`purchase_id`);

--
-- Indexes for table `reminder`
--
ALTER TABLE `reminder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Indexes for table `strings`
--
ALTER TABLE `strings`
  ADD PRIMARY KEY (`st_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`tag_id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`type_id`) USING BTREE;

--
-- Indexes for table `workouts`
--
ALTER TABLE `workouts`
  ADD PRIMARY KEY (`workout_id`),
  ADD KEY `FK_workouts_goals` (`workout_goal`),
  ADD KEY `FK_workouts_levels` (`workout_level`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bodyparts`
--
ALTER TABLE `bodyparts`
  MODIFY `bodypart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `community_posts`
--
ALTER TABLE `community_posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `diets`
--
ALTER TABLE `diets`
  MODIFY `diet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `equipments`
--
ALTER TABLE `equipments`
  MODIFY `equipment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `exercises`
--
ALTER TABLE `exercises`
  MODIFY `exercise_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `fcm_tokens`
--
ALTER TABLE `fcm_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `goals`
--
ALTER TABLE `goals`
  MODIFY `goal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `level_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `managers`
--
ALTER TABLE `managers`
  MODIFY `manager_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `package_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `promotion`
--
ALTER TABLE `promotion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `purchase_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reminder`
--
ALTER TABLE `reminder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shipping`
--
ALTER TABLE `shipping`
  MODIFY `shipping_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `tag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `workouts`
--
ALTER TABLE `workouts`
  MODIFY `workout_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `diets`
--
ALTER TABLE `diets`
  ADD CONSTRAINT `FK_categories` FOREIGN KEY (`diet_category`) REFERENCES `categories` (`category_id`);

--
-- Constraints for table `exercises`
--
ALTER TABLE `exercises`
  ADD CONSTRAINT `FK_exercises_equipments` FOREIGN KEY (`exercise_equipment`) REFERENCES `equipments` (`equipment_id`),
  ADD CONSTRAINT `FK_exercises_levels` FOREIGN KEY (`exercise_level`) REFERENCES `levels` (`level_id`);

--
-- Constraints for table `exercises_bodyparts`
--
ALTER TABLE `exercises_bodyparts`
  ADD CONSTRAINT `FK_exercises_bodyparts_bodyparts` FOREIGN KEY (`bodypart_id`) REFERENCES `bodyparts` (`bodypart_id`),
  ADD CONSTRAINT `FK_exercises_bodyparts_exercises` FOREIGN KEY (`exercise_id`) REFERENCES `exercises` (`exercise_id`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`post_tag`) REFERENCES `tags` (`tag_id`);

--
-- Constraints for table `workouts`
--
ALTER TABLE `workouts`
  ADD CONSTRAINT `FK_workouts_goals` FOREIGN KEY (`workout_goal`) REFERENCES `goals` (`goal_id`),
  ADD CONSTRAINT `FK_workouts_levels` FOREIGN KEY (`workout_level`) REFERENCES `levels` (`level_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
