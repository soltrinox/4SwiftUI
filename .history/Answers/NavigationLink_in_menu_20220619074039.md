```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: Using NavigationLink in Menu (SwiftUI) (by lenny)

A: `NavigationLink` should be inside `NavigationView` hierarchy. The `Menu` is outside navigation view, so put buttons inside menu which activate navigation link placed inside navigation view, eg. hidden in background.

Here is a demo of possible approach (tested with Xcode 12.1 / iOS 14.1)

![eZHCp](https://user-images.githubusercontent.com/62171579/168462984-d6d42eeb-f087-4725-a955-b9e66b872b5f.gif)

```
struct DemoNavigateFromMenu: View {
  @State private var navigateTo = ""
  @State private var isActive = false
  var body: some View {
    NavigationView {
      Menu {
        Button("item1") {
          self.navigateTo = "test1"
          self.isActive = true
        }
        Button("item2") {
          self.navigateTo = "test2"
          self.isActive = true
        }
      } label: {
        Text("open menu")
      }
      .background(
        NavigationLink(destination: Text(self.navigateTo), isActive: $isActive) {
          EmptyView()
        })
    }
  }
}
```
