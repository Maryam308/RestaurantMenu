import Foundation
//MenuItem.Swift

class MenuItem: MenuItemProtocol, Identifiable {
    var id: UUID
    var title: String
    var price: Double
    var category: MenuCategory
    var ordersCount: Int
    var ingredients: [Ingredient]

    init(id: UUID = UUID(), title: String, price: Double, category: MenuCategory, ordersCount: Int = 0, ingredients: [Ingredient] = []) {
        self.id = id
        self.title = title
        self.price = price
        self.category = category
        self.ordersCount = ordersCount
        self.ingredients = ingredients
    }
}
