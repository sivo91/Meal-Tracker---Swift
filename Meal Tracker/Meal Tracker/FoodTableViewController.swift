//
//  FoodTableViewController.swift
//  Meal Tracker
//
//  Created by Peter Sivak on 10/21/24.
//

import UIKit

class FoodTableViewController: UITableViewController {
    
    var meals: [Meal] {
        
            let breakfast1 = Food(name: "Cereal", description: "Milk with cereal and walnuts")
            let breakfast2 = Food(name: "Croissant", description: "Croissant with coffee")
            let breakfast3 = Food(name: "Orange Juice", description: "Glass of fresh orange juice")
            let breakfast = Meal(name: "Breakfast", food: [breakfast1, breakfast2, breakfast3])
            
            let lunch1 = Food(name: "Soup", description: "Chicken Soup")
            let lunch2 = Food(name: "Salmon", description: "Salmon with sweet potatoes")
            let lunch3 = Food(name: "Dessert", description: "Cheesecake")
            let lunch = Meal(name: "Lunch", food: [lunch1, lunch2, lunch3])
            
            let dinner1 = Food(name: "Bread", description: "Slice of bread")
            let dinner2 = Food(name: "Avocado", description: "Fresh avocado")
            let dinner3 = Food(name: "Cheese", description: "Slices of goat cheese")
            let dinner = Meal(name: "Dinner", food: [dinner1, dinner2, dinner3])
            
            return [breakfast, lunch, dinner]
        }

    override func viewDidLoad() {
        super.viewDidLoad()

    }

   

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return meals.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return meals[section].food.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell", for: indexPath)

        let meal = meals[indexPath.section]
        let food = meal.food[indexPath.row]
        
        cell.textLabel?.text = food.name
        cell.detailTextLabel?.text = food.description

        return cell
    }

    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return meals[section].name
    }

    

}
