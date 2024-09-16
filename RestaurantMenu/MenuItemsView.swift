import SwiftUI

struct MenuItemsView: View {
    let foodMenuItems = foodItems
    let drinkMenuItems = drinkItems
    let dessertMenuItems = dessertItems
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Spacer()
                    NavigationLink(destination: MenuItemDetailsView()) {
                        Image(systemName: "slider.horizontal.3")
                            .font(.title)
                            .foregroundColor(.blue)
                    }
                }

                HStack {
                    Text("Menu")
                        .font(.largeTitle)
                        .bold()
                    Spacer()
                }
                .padding(.top, 10)

                ScrollView {
                    VStack {
                        Text("Food")
                            .font(.title)
                        LazyVGrid(columns: columns, spacing: 10) {
                            ForEach(foodMenuItems.indices, id: \.self) { index in
                                let foodItem = foodMenuItems[index]
                                NavigationLink(destination: MenuItemsOptionView(menuItem: foodItem)) {
                                    VStack {
                                        Rectangle()
                                            .fill(Color.black)
                                            .frame(height: 100)
                                        Text("Food \(index + 1)") // or use foodItem.title
                                            .foregroundColor(.black)
                                    }
                                }
                            }
                        }
                    }
                    
                    VStack {
                        Text("Drinks")
                            .font(.title)
                        LazyVGrid(columns: columns, spacing: 10) {
                            ForEach(drinkMenuItems.indices, id: \.self) { index in
                                let drinkItem = drinkMenuItems[index]
                                NavigationLink(destination: MenuItemsOptionView(menuItem: drinkItem)) {
                                    VStack {
                                        Rectangle()
                                            .fill(Color.black)
                                            .frame(height: 100)
                                        Text("Drink \(index + 1)") // or use drinkItem.title
                                            .foregroundColor(.black)
                                    }
                                }
                            }
                        }
                    }
                    
                    VStack {
                        Text("Desserts")
                            .font(.title)
                        LazyVGrid(columns: columns, spacing: 10) {
                            ForEach(dessertMenuItems.indices, id: \.self) { index in
                                let dessertItem = dessertMenuItems[index]
                                NavigationLink(destination: MenuItemsOptionView(menuItem: dessertItem)) {
                                    VStack {
                                        Rectangle()
                                            .fill(Color.black)
                                            .frame(height: 100)
                                        Text("Dessert \(index + 1)") // or use dessertItem.title
                                            .foregroundColor(.black)
                                    }
                                }
                            }
                        }
                    }
                }
            }
            .padding()
            .navigationBarBackButtonHidden(true)
        }
    }
}
