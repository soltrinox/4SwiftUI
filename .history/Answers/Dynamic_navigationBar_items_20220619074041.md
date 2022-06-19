```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: Dynamically set SwiftUI NavigationBarItems? (by Brandogs)

A: Here is a demo of possible solution - add tracking selection for tabs and make button depending of tab selection. Tested with Xcode 12 / iOS 14

```
struct DemoView: View {
  @State private var selection = 0    // << here !!
  var body: some View {
    NavigationView {
      TabView(selection: $selection) {
        contentWithNavigationButtons()
          .tabItem {
            Image(systemName: "house")
            Text("Buttons")
          }.tag(0)                // << here !!
        
        contentWithoutNavigationButtons()
          .tabItem {
            Image(systemName: "person")
            Text("No Buttons")
          }.tag(1)
        
      }
      .navigationBarItems(trailing: Group {
        if selection == 0 {     // << here !!
          Button("Some"){}
        }
      })
    }
  }
}
```
