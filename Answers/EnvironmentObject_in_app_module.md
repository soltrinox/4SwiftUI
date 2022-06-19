```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: How to use EnvironmentObject in app file in SwiftUI (by alionthego)

A: You can use it as regular property at that level and pass as environment down into view hierarchy if/when needed, like

```
struct ExampleApp: App {

    let userAuth = UserAuth()     // << here !!
    
    var body: some Scene {
        WindowGroup {
            switch userAuth.loginStatus {
            case .signedIn:
                ContentView()
                   .environmentObject(userAuth)    // << here !!
            case .signedOut:
                Text("Signed Out")
            }
        }
    }
}
```
