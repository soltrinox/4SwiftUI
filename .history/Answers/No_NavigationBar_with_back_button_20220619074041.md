```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: Remove space NavigationTitle but not the back button (by )

A: Standard `Back` button cannot be shown without navigation bar, because it is navigation item, so part of navigation bar. I assume you just need transparent navigation bar.

Here is demo of possible solution (tested with Xcode 12.1 / iOS 14.1) / *images are used for better visibility* /

![L9zLW](https://user-images.githubusercontent.com/62171579/171999332-b861ee70-b5b1-46c3-817c-c3362b70c6d1.gif)

```
struct ContentView: View {
  
  init() {
    let navBarAppearance = UINavigationBarAppearance()
    navBarAppearance.configureWithTransparentBackground()
    UINavigationBar.appearance().standardAppearance = navBarAppearance
  }
  
  var body: some View {
    
    NavigationView {
      ZStack {
        Image("large_image")
        NavigationLink(destination: Image("large_image")) {
          Text("Go to details ->")
        }
      }
      .navigationBarItems(trailing: Button(action: {}) {
        Image(systemName: "gear")
          .font(.title2)
      }
      )
      .navigationBarTitle("", displayMode: .inline)
    }.accentColor(.red)
  }
}
```
