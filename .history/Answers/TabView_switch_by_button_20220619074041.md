```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: how to switch tab programmatically on button click? in swiftui (by Jayesh Joshi)

A: Here is a demo of possible approach - the idea is to move binding for tab selection into view with buttons, so button action could change it. 

Tested with Xcode 12 / iOS 14

```
enum Tab {
    case dashboard
    case home
    case second
}

struct AppTabNavigation: View {
    @State var selection: Tab = .home

    var body: some View {
        TabView(selection: $selection) {
            NavigationView {
                FirstTabView(tab: $selection)
            }.navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
            .navigationViewStyle(StackNavigationViewStyle())
            .tabItem {
                Label("Home", systemImage: "house.fill")
                    .accessibility(label: Text("Home"))
            }
            .tag(Tab.home)

            NavigationView {
                Text("SecondView")
            }.navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
            .navigationViewStyle(StackNavigationViewStyle())

            .tabItem {
                Label("Home", systemImage: "house.fill")
                    .accessibility(label: Text("Home"))
            }
            .tag(Tab.second)
        }
    }
}

struct FirstTabView: View {
    @Binding var tab: Tab
    var body: some View {
        Button("Go Second") { self.tab = .second }
    }
}
```
