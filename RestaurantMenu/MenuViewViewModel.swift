import Foundation

/// ViewModel for managing menu data and business logic
class MenuViewViewModel: ObservableObject {
    /// Array to store food menu items
    @Published var foodMenuItems: [MenuItem]
    
    /// Array to store drink menu items
    @Published var drinkMenuItems: [MenuItem]
    
    /// Array to store dessert menu items
    @Published var dessertMenuItems: [MenuItem]
    
    init() {
//         Initialize with mock data
        self.foodMenuItems = foodItems
        self.drinkMenuItems = drinkItems
        self.dessertMenuItems = dessertItems
    }
}
