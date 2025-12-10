//
// SampleData+RecipeCategory.swift
// Felix Favorites
//
// Created by Nathan Felix on 11/13/25
//

import Foundation
import SwiftData

// I had AI put all these in after I gave it a big document because I didn't want to type out all the data :)
extension Category {
    static func insertSampleData(modelContext: ModelContext) {
        // Create new instances of categories
        let italianCat = Category(name: "Italian")
        let americanCat = Category(name: "American")
        let mexicanCat = Category(name: "Mexican")
        let breakfastCat = Category(name: "Breakfast")
        let dessertCat = Category(name: "Desserts")
        let mainDishCat = Category(name: "Main Dishes")
        let soupCat = Category(name: "Soups")
        let sideDishCat = Category(name: "Side Dishes")
        let breadCat = Category(name: "Breads")
        
        // Add the recipe categories to the model context.
        modelContext.insert(italianCat)
        modelContext.insert(americanCat)
        modelContext.insert(mexicanCat)
        modelContext.insert(breakfastCat)
        modelContext.insert(dessertCat)
        modelContext.insert(mainDishCat)
        modelContext.insert(soupCat)
        modelContext.insert(sideDishCat)
        modelContext.insert(breadCat)
        
        // Create new instances of recipes
        
        // Chicken Picatta
        let chickenPicatta = Recipe(name: "Chicken Picatta")
        chickenPicatta.author = "Emily Felix"
        chickenPicatta.minutes = 30
        chickenPicatta.servings = 4
        chickenPicatta.expertiseLevel = "Medium"
        chickenPicatta.calories = 380
        chickenPicatta.isFavorite = true
        chickenPicatta.notes = "Classic Italian-American chicken dish with lemon, capers, and butter sauce"
        chickenPicatta.ingredients = "1 1/2 pounds boneless, skinless chicken thighs\nKosher salt and freshly ground black pepper, to taste\n5 1/2 tablespoons all-purpose flour, divided\n1 tablespoon canola oil\n1 tablespoon unsalted butter\n1 1/4 cups chicken stock\n1/4 cup dry white wine\n3 tablespoons freshly squeezed lemon juice\n2 tablespoons heavy cream\n2 tablespoons chopped fresh parsley leaves\n1/4 cup capers, drained"
        chickenPicatta.instructions = "1. Season chicken with 1 teaspoon salt and 1/2 teaspoon pepper. Dredge chicken in 4 tablespoons flour until evenly coated.\n2. Heat canola oil and butter in a medium skillet over medium heat.\n3. Working in batches, add chicken to the skillet in a single layer and cook until golden brown and cooked through, reaching an internal temperature of 165 degrees F, about 4-5 minutes per side; set aside. Reduce heat to medium low.\n4. Whisk in remaining 1 1/2 tablespoons flour until lightly browned, about 1 minute.\n5. Gradually whisk in chicken stock, wine and lemon juice. Bring to a boil; reduce heat and simmer, stirring occasionally, until reduced and slightly thickened, about 3 minutes. Stir in heavy cream, parsley and capers; season with salt and pepper, to taste. Return chicken to the skillet.\n6. Serve immediately."
        
        // Mac and Cheese
        let macAndCheese = Recipe(name: "Mac and Cheese")
        macAndCheese.author = "Emily Felix"
        macAndCheese.minutes = 25
        macAndCheese.servings = 6
        macAndCheese.expertiseLevel = "Easy"
        macAndCheese.calories = 420
        macAndCheese.notes = "Creamy homemade mac and cheese with a cheese roux."
        macAndCheese.ingredients = "1 lb macaroni\n2 tbsp butter\n1.5-2 cups milk\n1 heaping tablespoon flour\nCostco bag of shredded cheese (or 3-4 cups)\nSalt and pepper to taste\nOptional: sharp cheddar for extra flavor"
        macAndCheese.instructions = "1. Cook macaroni according to package directions and strain.\n2. In the same pot, melt about 2 tbsp butter.\n3. Pour in 1.5-2 cups of milk and add a big heaping tablespoon of flour right away and mix quickly. (Or you can do the other way with the flour in the melted butter then add the milk.)\n4. After it comes to a low boil add cheese. Drop in handfuls and stir until the desired cheese sauce thickness.\n5. Add salt and pepper to taste. Can add some sharp cheese for extra flavor.\n6. Stir in cooked macaroni.\n7. Serve with Bush's pork and beans on the side."
        
        // Chocolate Chip Cookies
        let chocolateChipCookies = Recipe(name: "Chocolate Chip Cookies")
        chocolateChipCookies.author = "Mrs. Watters"
        chocolateChipCookies.minutes = 20
        chocolateChipCookies.servings = 48
        chocolateChipCookies.expertiseLevel = "Easy"
        chocolateChipCookies.calories = 180
        chocolateChipCookies.notes = "The key is not to overmix! Watch carefully and don't overbake."
        chocolateChipCookies.ingredients = "1 lb butter (softened at room temperature - do not microwave)\n1½ cups sugar\n2 cups brown sugar\n4 eggs\n1 tsp salt\n2 tsp baking soda\n2 tsp vanilla\n6 cups flour\n1½ bags chocolate chips (milk, dark, or your preference)"
        chocolateChipCookies.instructions = "1. Cream butter and sugars together until the mixture is lighter in color than the brown sugar was to begin with.\n2. Add eggs and spices and mix until incorporated.\n3. Add flour and mix until incorporated. Do not overmix!!\n4. Add chocolate chips and mix until just incorporated. (The key is not to overmix!!)\n5. Bake at 375° for 8 minutes. Watch until they just start to have some golden areas. Don't overbake.\n6. Remove from tray immediately to avoid continued baking on hot cookie sheet."
        
        // Poppyseed Chicken
        let poppyseedChicken = Recipe(name: "Poppyseed Chicken")
        poppyseedChicken.author = "Sister Clugston"
        poppyseedChicken.minutes = 40
        poppyseedChicken.servings = 6
        poppyseedChicken.expertiseLevel = "Easy"
        poppyseedChicken.calories = 450
        poppyseedChicken.isFavorite = true
        poppyseedChicken.notes = "This recipe is pretty forgiving when it comes to exact measurements!"
        poppyseedChicken.ingredients = "About 4 cups cooked and diced or shredded chicken\n8 oz sour cream (can use a little extra)\n1-2 cans cream of chicken soup\n2-3 cups finely crushed Ritz crackers\n½ stick melted butter\n1-2 tablespoons poppy seeds\nSalt and pepper to taste"
        poppyseedChicken.instructions = "1. Put chicken in 9 x 13 pan.\n2. Mix together sour cream and cream of chicken soup. Pour over the chicken.\n3. Mix finely crushed Ritz crackers with melted butter and poppy seeds.\n4. Sprinkle cracker mixture over top of chicken and sauce.\n5. Bake 350° for 30 minutes or till it's bubbling around the edges."
        
        // Cinnamon Rolls
        let cinnamonRolls = Recipe(name: "Cinnamon Rolls")
        cinnamonRolls.author = "Emily Felix"
        cinnamonRolls.minutes = 120
        cinnamonRolls.servings = 24
        cinnamonRolls.expertiseLevel = "Medium"
        cinnamonRolls.calories = 380
        cinnamonRolls.isFavorite = true
        cinnamonRolls.notes = "Gooey is the goal! Makes about 20-25 rolls per log."
        cinnamonRolls.ingredients = "1 qt whole milk\n1 cup vegetable oil\n1 cup sugar\n2 packages active dry yeast (0.25 oz packets)\n8 cups (plus 1 cup extra, reserved) all-purpose flour\n1 tsp (heaping) baking powder\n1 tsp (scant) baking soda\n1 tbsp (heaping) salt\nPlenty of melted butter\n2 cups sugar\nGenerous sprinkling of cinnamon\n\nFrosting:\nPowdered sugar\nButter\nWater\nVanilla"
        cinnamonRolls.instructions = "1. Heat the milk, vegetable oil, and sugar in a medium saucepan over medium heat to just below a boil. Set aside and cool to warm. Sprinkle the yeast on top and let it sit on the milk for 1 minute.\n2. Add 8 cups of flour. Stir until just combined, then cover with a clean kitchen towel, and set aside in a relatively warm place for 1 hour.\n3. After 1 hour, remove the towel and add the baking powder, baking soda, salt, and the remaining 1 cup flour. Stir thoroughly to combine. Use the dough right away, or refrigerate for up to 3 days.\n4. Remove half the dough. On a floured surface, roll the dough into a large rectangle, about 30 x 10 inches. The dough should be rolled very thin.\n5. Pour 3/4 cup to 1 cup of melted butter over the surface. Generously sprinkle half of the cinnamon and 1 cup of sugar over the butter.\n6. Beginning at the end farthest from you, roll the rectangle tightly towards you. When finished, pinch the seam together and flip so seam is face down.\n7. With a sharp knife, make 1/2-inch slices. Pour a couple teaspoons of melted butter into disposable foil cake pans and swirl to coat. Place the sliced rolls in the pans (7-9 per pan).\n8. Repeat with other half of dough.\n9. Cover all pans with a kitchen towel and set aside to rise for at least 20 minutes.\n10. Preheat oven to 375°. Bake for 15 to 18 minutes, until golden brown.\n11. Remove from oven and immediately drizzle with icing."
        
        // Cavenders Pork & Rice
        let cavendersPork = Recipe(name: "Cavenders Pork & Rice")
        cavendersPork.author = "Emily Felix"
        cavendersPork.minutes = 60
        cavendersPork.servings = 6
        cavendersPork.expertiseLevel = "Easy"
        cavendersPork.calories = 420
        cavendersPork.notes = "One-pan meal with flavorful pork chops and rice"
        cavendersPork.ingredients = "4-6 pork chops (boneless thin)\n1 onion chopped\n3-4 bouillon cubes\n2 cups rice\n1 tomato\nCavenders seasoning\nSalt and pepper\n4 cups water\n1-2 TB vegetable oil"
        cavendersPork.instructions = "1. Preheat oven to 375°. Season pork with Cavenders and salt and pepper.\n2. Heat frying pan or pot with 1-2 TB vegetable oil and brown pork about 1 min each side. Remove and set aside.\n3. Add onion and bouillon and cook until tender (5 min), add 4 cups water.\n4. Place rice in 9x13, add onion mixture over rice and place chops on top.\n5. Bake at 375° for 30 minutes. Add tomato slices.\n6. Cover with foil and bake another 20-25 min."
        
        // Cloud Cookies
        let cloudCookies = Recipe(name: "Cloud Cookies")
        cloudCookies.author = "Emily Felix"
        cloudCookies.minutes = 30
        cloudCookies.servings = 24
        cloudCookies.expertiseLevel = "Easy"
        cloudCookies.calories = 45
        cloudCookies.isFavorite = true
        cloudCookies.notes = "Light and airy meringue cookies with chocolate chips"
        cloudCookies.ingredients = "2 egg whites\n½ tsp vanilla\n⅛ tsp cream of tartar\n⅔ cup sugar\n⅔ cup chocolate chips"
        cloudCookies.instructions = "1. Lightly grease a cookie sheet or cover with parchment, set aside.\n2. In a medium glass mixing bowl beat egg whites, vanilla, and cream of tartar with electric mixer on high speed till soft peaks form.\n3. Add the sugar, 1 tablespoon at a time, beating until stiff peaks form.\n4. Fold in the chocolate chips.\n5. Drop mixture by teaspoons on prepared cookie sheet.\n6. Bake in 300° oven for 20 minutes or until firm.\n7. Transfer cookies to a wire rack and let cool."
        
        // Smoothies
        let smoothies = Recipe(name: "Smoothies")
        smoothies.author = "Emily Felix"
        smoothies.minutes = 5
        smoothies.servings = 2
        smoothies.expertiseLevel = "Easy"
        smoothies.calories = 220
        smoothies.notes = "Healthy and refreshing breakfast smoothie. Can freeze spinach so it doesn't go bad."
        smoothies.ingredients = "Protein powder\n1 cup milk\nHalf frozen banana\n½ cup frozen fruit\n1 cup spinach (can freeze)"
        smoothies.instructions = "1. Add all ingredients to blender.\n2. Blend until smooth.\n3. Serve immediately."
        
        // Bread Dip
        let breadDip = Recipe(name: "Bread Dip")
        breadDip.author = "Emily Felix"
        breadDip.minutes = 2
        breadDip.servings = 4
        breadDip.expertiseLevel = "Easy"
        breadDip.calories = 120
        breadDip.notes = "Classic Italian-style bread dipping oil"
        breadDip.ingredients = "Olive oil\nBalsamic vinegar"
        breadDip.instructions = "1. Pour olive oil into a small dish.\n2. Add balsamic vinegar to taste.\n3. Serve with fresh bread."
        
        // Garlic Bread
        let garlicBread = Recipe(name: "Garlic Bread")
        garlicBread.author = "Emily Felix"
        garlicBread.minutes = 10
        garlicBread.servings = 6
        garlicBread.expertiseLevel = "Easy"
        garlicBread.calories = 180
        garlicBread.notes = "WATCH so it doesn't burn under the broiler!"
        garlicBread.ingredients = "½ stick butter, softened\n1 TB minced garlic (store-bought or fresh)\n1 loaf French or Italian bread"
        garlicBread.instructions = "1. Soften butter and add minced garlic, mix well.\n2. Slice bread in half lengthwise and then into pieces but not all the way through.\n3. Spread garlic butter on bread.\n4. Broil for about 5 min but WATCH so it doesn't burn."
        
        // Stroganoff Sandwich
        let stroganoffSandwich = Recipe(name: "Stroganoff Sandwich")
        stroganoffSandwich.author = "Emily Felix"
        stroganoffSandwich.minutes = 30
        stroganoffSandwich.servings = 6
        stroganoffSandwich.expertiseLevel = "Easy"
        stroganoffSandwich.calories = 450
        stroganoffSandwich.notes = "Open-faced sandwich with savory beef stroganoff topping"
        stroganoffSandwich.ingredients = "1 loaf French bread\n1 lb ground beef\n2 TB onion diced small\n1 ½ cups shredded cheddar\n1 cup sour cream\n1 TB Worcestershire sauce\nSalt and pepper\n2 tomatoes\n1 green pepper chopped\nButter for bread"
        stroganoffSandwich.instructions = "1. Slice bread lengthwise. Lightly butter bread and wrap in foil. Bake at 350° for 15 minutes.\n2. Brown meat, add onion and cook until transparent. Remove from heat and add sour cream, Worcestershire sauce, salt and pepper.\n3. Remove bread from oven. Spread the mixture on each half.\n4. Arrange tomatoes and green pepper on top. Sprinkle with cheese.\n5. Place back in the oven to melt cheese."
        
        // Buttermilk Syrup
        let buttermilkSyrup = Recipe(name: "Buttermilk Syrup")
        buttermilkSyrup.author = "Emily Felix"
        buttermilkSyrup.minutes = 15
        buttermilkSyrup.servings = 8
        buttermilkSyrup.expertiseLevel = "Medium"
        buttermilkSyrup.calories = 280
        buttermilkSyrup.notes = "Use a LARGE pot - this will boil over if pot is too small! Requires constant vigilance."
        buttermilkSyrup.ingredients = "3/4 cup buttermilk\n1 1/2 cups sugar\n1 stick real butter\n2 TB corn syrup\n1 tsp baking soda\n1 tsp vanilla"
        buttermilkSyrup.instructions = "1. Combine buttermilk, sugar, butter, corn syrup, and baking soda in a LARGE pot (like one you'd make soup in).\n2. Bring ingredients to a boil and reduce heat to low (as long as it's still bubbling, you're okay).\n3. Cook, stirring very frequently, for 8-9 minutes. You're basically making candy here and candy-making requires constant vigilance.\n4. When it's done, it should take on a golden-brown color. Remove from heat and add vanilla.\n5. There will be foam on top. It tastes just as good, but if you're into aesthetics, you can skim it off; otherwise, just give it a good stir."
        
        // Felix French Toast
        let felixFrenchToast = Recipe(name: "Felix French Toast")
        felixFrenchToast.author = "Greg Felix"
        felixFrenchToast.minutes = 15
        felixFrenchToast.servings = 4
        felixFrenchToast.expertiseLevel = "Easy"
        felixFrenchToast.calories = 320
        felixFrenchToast.isFavorite = true
        felixFrenchToast.notes = "The more shortening the better! Seriously one of the best breakfasts"
        felixFrenchToast.ingredients = "Sliced bread\n1 cup flour\n1 egg\n1 tsp baking powder\n1 TB vanilla\n1 cup milk\n1 tsp salt\nShortening"
        felixFrenchToast.instructions = "1. Mix together flour, egg, baking powder, vanilla, milk and salt.\n2. Grease skillet with shortening.\n3. Dip bread in egg mixture, drip off excess.\n4. Fry in shortening until golden brown on both sides. The more shortening the better."
        
        // Ham and Cheese Sliders
        let hamCheeseSliders = Recipe(name: "Ham and Cheese Sliders")
        hamCheeseSliders.author = "Emily Felix"
        hamCheeseSliders.minutes = 20
        hamCheeseSliders.servings = 12
        hamCheeseSliders.expertiseLevel = "Easy"
        hamCheeseSliders.calories = 280
        hamCheeseSliders.notes = "Perfect for parties or quick meals"
        hamCheeseSliders.ingredients = "12 Hawaiian Rolls\nLunch meat (as much as you want)\n6 slices provolone or swiss\n4 TB butter\n1 TB brown sugar\n1 ½ tsp dijon\n1 ½ tsp worcestershire\n¼ tsp poppy seeds"
        hamCheeseSliders.instructions = "1. Preheat oven to 350°. Line cookie sheet with foil.\n2. Mix butter, brown sugar, dijon, worcestershire, and poppy seeds for sauce.\n3. Slice the whole package of rolls in half.\n4. Layer ham and cheese on bottom half. Put top on.\n5. Drizzle with sauce.\n6. Cook for 10 minutes."
        
        // Taco Soup
        let tacoSoup = Recipe(name: "Taco Soup")
        tacoSoup.author = "Emily Felix"
        tacoSoup.minutes = 40
        tacoSoup.servings = 8
        tacoSoup.expertiseLevel = "Easy"
        tacoSoup.calories = 380
        tacoSoup.notes = "Easy one-pot meal. Serve with all the toppings!"
        tacoSoup.ingredients = "1-2 lbs ground beef\n3 cans tomato sauce\n2 cans pinto beans\n2 cans corn\n2 cans kidney beans\n1-2 packages taco seasoning\nSour cream (for serving)\nTortilla chips (for serving)\nShredded cheese (for serving)"
        tacoSoup.instructions = "1. Cook the beef in a big pot.\n2. Add all the canned foods and the taco seasoning.\n3. Mix together and warm for 30 minutes.\n4. Serve with cheese, sour cream, cilantro, guacamole, and tortilla chips."
        
        // Pineapple Banana
        let pineappleBanana = Recipe(name: "Pineapple Banana")
        pineappleBanana.author = "Emily Felix"
        pineappleBanana.minutes = 15
        pineappleBanana.servings = 4
        pineappleBanana.expertiseLevel = "Easy"
        pineappleBanana.calories = 180
        pineappleBanana.notes = "Serve immediately while warm. Great breakfast or dessert!"
        pineappleBanana.ingredients = "1 can pineapple slices or tidbits, drained\n3-5 bananas\n½ stick butter\n1 tsp cinnamon"
        pineappleBanana.instructions = "1. Melt butter in skillet.\n2. Add pineapple and sauté for 7ish minutes.\n3. Add bananas and cinnamon and cook until bananas are soft but not too mushy.\n4. Serve immediately."
        
        // Easy Alfredo
        let easyAlfredo = Recipe(name: "Easy Alfredo")
        easyAlfredo.author = "Emily Felix"
        easyAlfredo.minutes = 15
        easyAlfredo.servings = 6
        easyAlfredo.expertiseLevel = "Easy"
        easyAlfredo.calories = 420
        easyAlfredo.notes = "If sauce is too thick add milk or water a TB at a time. Can add chicken, shrimp, veggies, etc."
        easyAlfredo.ingredients = "1 can evaporated milk\n1 stick butter\n8 oz cream cheese\n1 cup parmesan cheese"
        easyAlfredo.instructions = "1. Melt butter and milk in sauce pan.\n2. Add cream cheese and stir until combined.\n3. Add parmesan and whisk until smooth.\n4. Can add chicken, shrimp, veggies, etc. If sauce is too thick add milk or water a TB at a time.\n5. Serve over pasta."
        
        // Easy Bread Dough
        let easyBreadDough = Recipe(name: "Easy Bread Dough")
        easyBreadDough.author = "Emily Felix"
        easyBreadDough.minutes = 10
        easyBreadDough.servings = 16
        easyBreadDough.expertiseLevel = "Easy"
        easyBreadDough.calories = 150
        easyBreadDough.isFavorite = true
        easyBreadDough.notes = "Requires a mixer. Makes 2 loaves. Use as needed for various recipes."
        easyBreadDough.ingredients = "5 ¼ cups flour\n¼ cup sugar\n1 ½ TB yeast\n½ TB salt\n1 ½ TB vegetable oil\n2 cups + 1 TB really warm water"
        easyBreadDough.instructions = "1. Mix dry ingredients.\n2. Add oil and water and mix for 1 minute.\n3. Check if dough is too dry and add 1 TB water if it is.\n4. Mix 5 minutes and use as needed. Makes 2 loaves."
        
        // Sandwich Braid
        let sandwichBraid = Recipe(name: "Sandwich Braid")
        sandwichBraid.author = "Emily Felix"
        sandwichBraid.minutes = 45
        sandwichBraid.servings = 8
        sandwichBraid.expertiseLevel = "Medium"
        sandwichBraid.calories = 380
        sandwichBraid.notes = "Beautiful presentation, tastes amazing!"
        sandwichBraid.ingredients = "1 loaf bread dough\n¼ cup soft butter\n1 TB ranch dressing powder\nSliced ham\nCheddar cheese - shredded or sliced"
        sandwichBraid.instructions = "1. Roll bread dough on a greased cookie sheet.\n2. Make slits along the two sides leaving the center ⅓ of the bread open.\n3. Combine butter and ranch. Spread half of butter over the center of the dough.\n4. Layer the ham and cheese down the middle.\n5. Fold up strips in braid pattern and cover with remaining butter.\n6. Rise for 20 minutes.\n7. Bake at 350° for 20-25 minutes."
        
        // Shepherds Pie
        let shepherdsPie = Recipe(name: "Shepherds Pie")
        shepherdsPie.author = "Emily Felix"
        shepherdsPie.minutes = 60
        shepherdsPie.servings = 8
        shepherdsPie.expertiseLevel = "Easy"
        shepherdsPie.calories = 450
        shepherdsPie.notes = "Classic comfort food. Can also top with cheese."
        shepherdsPie.ingredients = "1 lb hamburger\n½ onion\nFresh, frozen or canned vegetables (corn, peas, green beans, etc)\n1 can cream of mushroom or chicken\n½ cup sour cream\n5-6 potatoes, diced\nButter\nMilk\nSalt and pepper"
        shepherdsPie.instructions = "1. Make a pot of boiling water and cook potatoes for 25 minutes. Mash with butter and a little milk to make mashed potatoes.\n2. Cook hamburger until brown. Add onions and cook until soft.\n3. Add other veggies and soup and sour cream. Salt and pepper as desired.\n4. Pour hamburger mixture in 13x9 or 8x8 and then put potatoes on top.\n5. Cook at 350° for 30 minutes. Can also top with cheese."
        
        // Hootin' Nanny Pancakes
        let hootinNannyPancakes = Recipe(name: "Hootin' Nanny Pancakes")
        hootinNannyPancakes.author = "Greg Felix"
        hootinNannyPancakes.minutes = 25
        hootinNannyPancakes.servings = 4
        hootinNannyPancakes.expertiseLevel = "Easy"
        hootinNannyPancakes.calories = 280
        hootinNannyPancakes.notes = "Fun name, delicious pancake! Puffs up beautifully in the oven."
        hootinNannyPancakes.ingredients = "3 eggs\n½ cup milk\n½ cup flour\n⅛ tsp salt\n2 TB butter"
        hootinNannyPancakes.instructions = "1. In blender (or by hand) mix eggs, milk, flour, and salt.\n2. Pour into 8x8 pan and dot with 2 TB butter cut into little pieces.\n3. Cook at 450° for 20 minutes."
        
        // Breakfast Cake
        let breakfastCake = Recipe(name: "Breakfast Cake")
        breakfastCake.author = "Emily Felix"
        breakfastCake.minutes = 50
        breakfastCake.servings = 9
        breakfastCake.expertiseLevel = "Medium"
        breakfastCake.calories = 380
        breakfastCake.notes = "Watch the broiler when toasting the coconut topping!"
        breakfastCake.ingredients = "1 ½ cups flour\n¾ cup sugar\n2 ½ tsp baking powder\n¾ tsp salt\n¼ cup shortening\n¾ cup milk\n1 egg\n\nStreusel:\n1 TB melted butter\n¼ cup brown sugar\n1 tsp cinnamon\n¼ cup chopped nuts\n\nTopping:\n4 TB butter\n½ cup brown sugar\n2 TB milk\n1 ¼ cups coconut"
        breakfastCake.instructions = "1. Preheat oven to 375°. Grease 8x8 dish.\n2. Blend all cake ingredients.\n3. Stir together streusel ingredients.\n4. Pour ½ batter in pan, sprinkle streusel over and pour the rest of the batter on top.\n5. Cook 40-45 minutes.\n6. For topping: boil butter, sugar and milk stirring constantly. Remove from heat and add coconut.\n7. Spread topping on cake and broil until golden (watch it!)."
        
        // Yummy Yummy Smell Smell
        let yummyYummySmellSmell = Recipe(name: "Yummy Yummy Smell Smell")
        yummyYummySmellSmell.author = "Emily Felix"
        yummyYummySmellSmell.minutes = 60
        yummyYummySmellSmell.servings = 10
        yummyYummySmellSmell.expertiseLevel = "Easy"
        yummyYummySmellSmell.calories = 480
        yummyYummySmellSmell.isFavorite = true
        yummyYummySmellSmell.notes = "Named for how amazing it smells while cooking! Perfect comfort food."
        yummyYummySmellSmell.ingredients = "2-3 chicken breasts\n1 onion diced\n4 stalks celery diced\n2 cups uncooked rice\n16 oz sour cream\n2 cans cream of chicken soup\n1 package ritz crackers\n¼ cup melted butter\nSalt and pepper to taste"
        yummyYummySmellSmell.instructions = "1. Boil chicken with onions and celery for 20ish minutes (until chicken is cooked).\n2. Drain and reserve the water to use 4 cups with the rice. Cook rice and chicken water covered for 20 minutes.\n3. In large bowl: Chop up chicken and add to rice with the soups and sour cream and salt and pepper. Pour into 9x13 pan.\n4. Crunch up the ritz and add to melted butter. Sprinkle over the top of rice mixture.\n5. Cook at 375° for 30-40 minutes."
        
        // Focaccia Bread
        let focacciaBread = Recipe(name: "Focaccia Bread")
        focacciaBread.author = "Emily Felix"
        focacciaBread.minutes = 45
        focacciaBread.servings = 8
        focacciaBread.expertiseLevel = "Hard"
        focacciaBread.calories = 320
        focacciaBread.notes = "Stuffed with mozzarella! Can serve with homemade ranch."
        focacciaBread.ingredients = "2 ¾ cups flour\n1 tsp salt\n1 tsp sugar\n1 TB active dry yeast\n1 tsp garlic powder\n1 tsp oregano\n1 tsp thyme\n½ tsp basil\nPinch of pepper\n1 TB vegetable oil\n1 ½ cups warm water\n2 TB olive oil\n1 TB parmesan\n1 cup mozzarella"
        focacciaBread.instructions = "1. Stir all dry ingredients (except parmesan and mozzarella) and then add vegetable oil and water.\n2. Turn onto floured surface and knead until smooth and elastic.\n3. Place in oiled bowl and cover with damp cloth for 20 minutes.\n4. Preheat to 450°. Split bread into 2.\n5. Put ½ in pie dish or 8x8 pan sprayed with PAM, put mozzarella on bread and then top with remaining half of dough.\n6. Brush top with olive oil and parmesan.\n7. Bake for 15 minutes. Can serve with homemade ranch."
        
        // Meatballs
        let meatballs = Recipe(name: "Meatballs")
        meatballs.author = "Emily Felix"
        meatballs.minutes = 50
        meatballs.servings = 6
        meatballs.expertiseLevel = "Medium"
        meatballs.calories = 420
        meatballs.isFavorite = true
        meatballs.notes = "Sweet and tangy sauce makes these meatballs irresistible"
        meatballs.ingredients = "1 lb hamburger\n⅔ cup oats\n2 eggs\n½ cup chopped onion\n½ cup milk\n1 tsp worcestershire sauce\nPepper\n\nSauce:\n1 cup brown sugar\n½ cup vinegar\n2 tsp mustard\n½ cup barbecue sauce\n2 tsp worcestershire sauce"
        meatballs.instructions = "1. Preheat oven to 350°.\n2. Mix all the meatball ingredients and form into balls. Place in 9x13 pan and cook 20 minutes.\n3. Meanwhile make the sauce by stirring all sauce ingredients together.\n4. Pour sauce over meatballs and cook another 25 minutes."
        
        // Zucchini Bread
        let zucchinniBread = Recipe(name: "Zucchini Bread")
        zucchinniBread.author = "Emily Felix"
        zucchinniBread.minutes = 60
        zucchinniBread.servings = 16
        zucchinniBread.expertiseLevel = "Easy"
        zucchinniBread.calories = 280
        zucchinniBread.notes = "Great way to use up garden zucchini! Makes 2 loaves."
        zucchinniBread.ingredients = "3 eggs\n2 cups sugar\n1 cup vegetable oil\n2.5 cups grated zucchini\n2 tsp vanilla\n3 cups flour\n1 tsp salt\n1 tsp baking powder\n1 tsp baking soda\n2 tsp cinnamon\n½ cup coconut\n½ cup chopped pecans"
        zucchinniBread.instructions = "1. Grease 2 bread pans. Preheat oven to 350°.\n2. Mix all ingredients in order.\n3. Pour into pans.\n4. Bake for 50 minutes.\n5. Let cool in pan for 10 minutes and then transfer to wire rack."
        
        // Christmas Breakfast
        let christmasBreakfast = Recipe(name: "Christmas Breakfast")
        christmasBreakfast.author = "Emily Felix"
        christmasBreakfast.minutes = 45
        christmasBreakfast.servings = 12
        christmasBreakfast.expertiseLevel = "Easy"
        christmasBreakfast.calories = 480
        christmasBreakfast.notes = "Prepare the night before! Perfect for holiday mornings."
        christmasBreakfast.ingredients = "¾ loaf of white bread cut into cubes\n1 lb sausage links browned and cut into small chunks\n2 cups shredded cheese\n12 eggs\n1 cup milk\n1 tsp dry mustard\n1 can cream of mushroom\nSalt and pepper"
        christmasBreakfast.instructions = "Night before:\n1. Spray 9x13 pan and put all the bread cubes in.\n2. Sprinkle sausage and cheese over.\n3. Beat eggs, milk, mustard and a little salt and pepper. Pour over bread.\n4. Cover with foil and put in fridge overnight.\n\nMorning:\n1. Preheat to 350° and pour one can of cream of mushroom soup over the top.\n2. Cook for 45 minutes."
        
        // Peach Treat
        let peachTreat = Recipe(name: "Peach Treat")
        peachTreat.author = "Emily Felix"
        peachTreat.minutes = 65
        peachTreat.servings = 12
        peachTreat.expertiseLevel = "Easy"
        peachTreat.calories = 320
        peachTreat.notes = "Refrigerate 1 hour before serving. Great summer dessert!"
        peachTreat.ingredients = "45 crushed vanilla wafers\n¼ cup sugar\n⅓ cup soft butter\n1 can sweetened condensed milk\n¼ cup lemon juice\n8 oz cool whip, thawed\n5 cups fresh peaches, diced\nExtra vanilla wafers for the top"
        peachTreat.instructions = "1. Combine crushed wafers, sugar and butter in bottom of a 9x13 pan.\n2. In a bowl combine sweetened condensed milk, lemon juice and cool whip.\n3. Fold in peaches and pour on top of crust.\n4. Refrigerate 1 hour.\n5. Sprinkle with extra wafers when ready to eat."
        
        // Add the recipes to the model context.
        modelContext.insert(chickenPicatta)
        modelContext.insert(macAndCheese)
        modelContext.insert(chocolateChipCookies)
        modelContext.insert(poppyseedChicken)
        modelContext.insert(cinnamonRolls)
        modelContext.insert(cavendersPork)
        modelContext.insert(cloudCookies)
        modelContext.insert(smoothies)
        modelContext.insert(breadDip)
        modelContext.insert(garlicBread)
        modelContext.insert(stroganoffSandwich)
        modelContext.insert(buttermilkSyrup)
        modelContext.insert(felixFrenchToast)
        modelContext.insert(hamCheeseSliders)
        modelContext.insert(tacoSoup)
        modelContext.insert(pineappleBanana)
        modelContext.insert(easyAlfredo)
        modelContext.insert(easyBreadDough)
        modelContext.insert(sandwichBraid)
        modelContext.insert(shepherdsPie)
        modelContext.insert(hootinNannyPancakes)
        modelContext.insert(breakfastCake)
        modelContext.insert(yummyYummySmellSmell)
        modelContext.insert(focacciaBread)
        modelContext.insert(meatballs)
        modelContext.insert(zucchinniBread)
        modelContext.insert(christmasBreakfast)
        modelContext.insert(peachTreat)
        
        // Set the category for each recipe.
        chickenPicatta.categories.append(italianCat)
        chickenPicatta.categories.append(mainDishCat)
        
        macAndCheese.categories.append(americanCat)
        macAndCheese.categories.append(sideDishCat)
        
        chocolateChipCookies.categories.append(americanCat)
        chocolateChipCookies.categories.append(dessertCat)
        
        poppyseedChicken.categories.append(americanCat)
        poppyseedChicken.categories.append(mainDishCat)
        
        cinnamonRolls.categories.append(americanCat)
        cinnamonRolls.categories.append(breakfastCat)
        cinnamonRolls.categories.append(dessertCat)
        
        cavendersPork.categories.append(americanCat)
        cavendersPork.categories.append(mainDishCat)
        
        cloudCookies.categories.append(americanCat)
        cloudCookies.categories.append(dessertCat)
        
        smoothies.categories.append(breakfastCat)
        
        breadDip.categories.append(italianCat)
        breadDip.categories.append(sideDishCat)
        
        garlicBread.categories.append(italianCat)
        garlicBread.categories.append(sideDishCat)
        garlicBread.categories.append(breadCat)
        
        stroganoffSandwich.categories.append(americanCat)
        stroganoffSandwich.categories.append(mainDishCat)
        
        buttermilkSyrup.categories.append(breakfastCat)
        buttermilkSyrup.categories.append(sideDishCat)
        
        felixFrenchToast.categories.append(breakfastCat)
        
        hamCheeseSliders.categories.append(americanCat)
        hamCheeseSliders.categories.append(mainDishCat)
        
        tacoSoup.categories.append(mexicanCat)
        tacoSoup.categories.append(soupCat)
        tacoSoup.categories.append(mainDishCat)
        
        pineappleBanana.categories.append(breakfastCat)
        pineappleBanana.categories.append(sideDishCat)
        
        easyAlfredo.categories.append(italianCat)
        easyAlfredo.categories.append(mainDishCat)
        
        easyBreadDough.categories.append(breadCat)
        
        sandwichBraid.categories.append(americanCat)
        sandwichBraid.categories.append(mainDishCat)
        sandwichBraid.categories.append(breadCat)
        
        shepherdsPie.categories.append(americanCat)
        shepherdsPie.categories.append(mainDishCat)
        
        hootinNannyPancakes.categories.append(breakfastCat)
        
        breakfastCake.categories.append(breakfastCat)
        breakfastCake.categories.append(dessertCat)
        
        yummyYummySmellSmell.categories.append(americanCat)
        yummyYummySmellSmell.categories.append(mainDishCat)
        
        focacciaBread.categories.append(italianCat)
        focacciaBread.categories.append(breadCat)
        focacciaBread.categories.append(sideDishCat)
        
        meatballs.categories.append(americanCat)
        meatballs.categories.append(mainDishCat)
        
        zucchinniBread.categories.append(americanCat)
        zucchinniBread.categories.append(breadCat)
        zucchinniBread.categories.append(dessertCat)
        
        christmasBreakfast.categories.append(breakfastCat)
        christmasBreakfast.categories.append(mainDishCat)
        
        peachTreat.categories.append(dessertCat)
        
        // Save the context
        try? modelContext.save()
    }
    
    static func reloadSampleData(modelContext: ModelContext) {
        do {
            // Fetch and delete recipes individually (this properly handles relationships)
            let recipeDescriptor = FetchDescriptor<Recipe>()
            let allRecipes = try modelContext.fetch(recipeDescriptor)
            for recipe in allRecipes {
                modelContext.delete(recipe)
            }
            
            // Fetch and delete categories individually
            let categoryDescriptor = FetchDescriptor<Category>()
            let allCategories = try modelContext.fetch(categoryDescriptor)
            for category in allCategories {
                modelContext.delete(category)
            }
            
            // Save the deletions
            try modelContext.save()
            
            // Insert fresh sample data
            insertSampleData(modelContext: modelContext)
        } catch {
            fatalError(error.localizedDescription)
        }
    }
}
