import Foundation

// Sample data for food MenuItems
let foodItems: [MenuItem] = [
    MenuItem(title: "Pizza", price: 9.99, category: .food, ordersCount: 1000, ingredients: [.pasta, .tomatoSauce]),
    MenuItem(title: "Burger", price: 11.99, category: .food, ordersCount: 500, ingredients: [.spinach, .carrot]),
    MenuItem(title: "Pasta Salad", price: 8.99, category: .food, ordersCount: 750, ingredients: [.pasta, .spinach]),
    MenuItem(title: "Chicken Wings", price: 12.99, category: .food, ordersCount: 300),
    MenuItem(title: "Beef Tacos", price: 10.99, category: .food, ordersCount: 1000, ingredients: [.spinach, .carrot]),
    MenuItem(title: "Vegetable Stir Fry", price: 7.99, category: .food, ordersCount: 200, ingredients: [.broccoli, .carrot]),
    MenuItem(title: "Spaghetti Bolognese", price: 14.99, category: .food, ordersCount: 800, ingredients: [.pasta, .tomatoSauce]),
    MenuItem(title: "Caesar Salad", price: 6.99, category: .food, ordersCount: 600, ingredients: [.spinach]),
    MenuItem(title: "Lasagna", price: 13.99, category: .food, ordersCount: 450, ingredients: [.pasta, .tomatoSauce]),
    MenuItem(title: "Grilled Cheese Sandwich", price: 5.99, category: .food, ordersCount: 150, ingredients: [.pasta]),
    MenuItem(title: "Chicken Alfredo", price: 15.99, category: .food, ordersCount: 900, ingredients: [.pasta, .spinach]),
    MenuItem(title: "Minestrone Soup", price: 9.99, category: .food, ordersCount: 1000, ingredients: [.spinach, .carrot, .tomatoSauce])
]

// Sample data for drink MenuItems
let drinkItems: [MenuItem] = [
    MenuItem(title: "Lemonade", price: 3.99, category: .drink, ordersCount: 800),
    MenuItem(title: "Iced Tea", price: 2.99, category: .drink, ordersCount: 700),
    MenuItem(title: "Soda", price: 1.99, category: .drink, ordersCount: 600),
    MenuItem(title: "Coffee", price: 4.99, category: .drink, ordersCount: 1000),
    MenuItem(title: "Hot Chocolate", price: 3.49, category: .drink, ordersCount: 500),
    MenuItem(title: "Orange Juice", price: 3.49, category: .drink, ordersCount: 300),
    MenuItem(title: "Milkshake", price: 5.49, category: .drink, ordersCount: 650),
    MenuItem(title: "Water", price: 1.49, category: .drink, ordersCount: 900)
]

// Sample data for dessert MenuItems
let dessertItems: [MenuItem] = [
    MenuItem(title: "Chocolate Cake", price: 4.99, category: .dessert, ordersCount: 600),
    MenuItem(title: "Cheesecake", price: 5.99, category: .dessert, ordersCount: 800),
    MenuItem(title: "Apple Pie", price: 3.99, category: .dessert, ordersCount: 450),
    MenuItem(title: "Ice Cream", price: 2.99, category: .dessert, ordersCount: 700)
]
