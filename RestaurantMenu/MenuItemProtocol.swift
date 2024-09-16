import Foundation
//MenuItemProtocol.Swift
protocol MenuItemProtocol {
    var id: UUID { get }
    var title: String { get }
    var price: Double { get }
    var category: MenuCategory { get }
    var ordersCount: Int { get set }
    var ingredients: [Ingredient] { get set }
}
