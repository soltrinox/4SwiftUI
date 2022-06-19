```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: How does one use NavigationLink isActive binding when working with List in SwiftUI? (by Aswath)

A: Here is a possible approach for your use-case - hide navigation link in background and
activate it by tag programmatically (depending on validation)

```
struct ListView: View {
    
    // ... your view model defined here

    @State private var selectedItem: UUID? = nil
    var body: some View {

        List (viewModel.allItems, id: \.id) { item in
            Text(item.name)
                .onTapGesture {
                    // perform here validation if/which needed
                    self.selectedItem = item.id                 // << here !!
                }
                .background(
                    NavigationLink(destination: DetailView(item), tag: item.id,   // << here !!
                        selection: $selectedItem) { EmptyView() }
                        .buttonStyle(PlainButtonStyle())
                )
        }
    }
}
```
