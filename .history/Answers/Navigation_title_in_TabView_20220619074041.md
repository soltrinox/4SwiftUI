```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: SwiftUI navigation titles within TabView (by John Sorensen)

A: We can define title depending on tab selection. Below is a simple demo of approach. Tested with Xcode 13 / iOS 15

```
struct ContentView: View {
    @State var selection = 1

    var body: some View {
        NavigationView {
            TabView(selection: $selection) {
                Text("Hello")
                    .tabItem {
                        Image(systemName: "square.stack")
                }.tag(1)
                Text("Hello Again")
                    .tabItem {
                        Image(systemName: "checkmark.square")
                }.tag(2)
            }
            .navigationTitle(selection == 1 ? "First" : "Second") // << here !!
        }
    }
}
```
