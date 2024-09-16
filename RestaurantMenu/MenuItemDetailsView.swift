import SwiftUI

struct MenuItemDetailsView: View {

    enum Category: String, CaseIterable, Identifiable {
        case food = "Food"
        case drinks = "Drinks"
        case desserts = "Dessert"
        
        var id: String { self.rawValue }
    }

    enum SortOption: String, CaseIterable, Identifiable {
        case mostPopular = "Most Popular"
        case price = "Price $-$$$"
        case aToZ = "A-Z"
        
        var id: String { self.rawValue }
    }

    @State private var selectedCategory: Category = .food
    @State private var selectedSortOption: SortOption = .mostPopular

    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button(action: {
                    // This will navigate back to the previous view (MenuItemsView)
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Text("Done")
                        .foregroundColor(.blue)
                        .font(.title3)
                }
            }
            .padding()

            HStack {
                Text("Filter")
                    .font(.largeTitle)
                    .bold()
                Spacer()
            }
            .padding(.top)

            List {
                Section(header: Text("Select Category")) {
                    ForEach(Category.allCases) { category in
                        HStack {
                            Text(category.rawValue)
                            Spacer()
                            if selectedCategory == category {
                                Image(systemName: "checkmark")
                                    .foregroundColor(.blue)
                            }
                        }
                        .contentShape(Rectangle())
                        .onTapGesture {
                            selectedCategory = category
                        }
                    }
                }
                
                Section(header: Text("Sort by")) {
                    ForEach(SortOption.allCases) { option in
                        HStack {
                            Text(option.rawValue)
                            Spacer()
                            if selectedSortOption == option {
                                Image(systemName: "checkmark")
                                    .foregroundColor(.blue)
                            }
                        }
                        .contentShape(Rectangle())
                        .onTapGesture {
                            selectedSortOption = option
                        }
                    }
                }
            }
            .listStyle(GroupedListStyle())
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        .navigationBarBackButtonHidden(true) // Hide the default back button
    }
}

#Preview {
    MenuItemDetailsView()
}
