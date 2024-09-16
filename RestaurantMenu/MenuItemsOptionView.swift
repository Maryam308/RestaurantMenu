import SwiftUI

struct MenuItemsOptionView: View {
    let menuItem: MenuItem // Pass the selected food item
    
    var body: some View {
        VStack {
            Text(menuItem.title)
                .font(.largeTitle)
                .bold()
                .padding(.top)

            Image("Little-Lemon-Logo") 
                .resizable()
                .scaledToFit()
                .frame(height: 300)
                .padding(.vertical)

            Text("Price:")
                .font(.title2)
            Text(String(format: "$%.2f", menuItem.price))
                .font(.title3)
                .padding(.bottom, 10)
            
            Text("Ordered:")
                .font(.title2)
            Text("\(menuItem.ordersCount)")
                .font(.title3)
                .padding(.bottom, 10)

            if !menuItem.ingredients.isEmpty {
                Text("Ingredients:")
                    .font(.title2)
                VStack(alignment: .leading) {
                    ForEach(menuItem.ingredients, id: \.self) { ingredient in
                        Text(ingredient.rawValue)
                    }
                }
                .font(.title3)
                .padding(.bottom, 20)
            }
            
            Spacer()
        }
        .padding()
        .navigationTitle("Menu")
        .navigationBarTitleDisplayMode(.inline)
    }
}
