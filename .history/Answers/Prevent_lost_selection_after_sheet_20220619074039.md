```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: Why does showing a sheet over a TabView change my selected tab? (by Luke Morse)

A: You need to tag your tab items so switching tabs will store selection. 

Here is fixed variant. Tested with Xcode 12 / iOS 14

```
struct SheetTest: View {
    @State var selection = 0
    @State var showSheet = false
    
    var body: some View {
        TabView(selection: $selection) {
            NavigationView {
                Text("Tab 1")
                    .navigationBarItems(trailing: button)
            }.navigationViewStyle(StackNavigationViewStyle())
            .tabItem({
                Image(systemName: "1.circle")
                Text("Tab 1")
            }).tag(0)             // << here !!
            
            
            NavigationView {
                Text("Tab 2")
                    .navigationBarItems(trailing: button)
            }.navigationViewStyle(StackNavigationViewStyle())
            .tabItem({
                Image(systemName: "2.circle")
                Text("Tab 2")
            }).tag(1)          // << and here !!
            
        }
        .sheet(isPresented: $showSheet) {
            Text("Sheet")
        }
    }
    
    var button: some View {
        return Button(action: {
            showSheet = true
        }, label: {
            Text("button")
        })
    }
}
```
