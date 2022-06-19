```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: Run code during app launch in SwiftUI 2.0 (by jasnzhng)

A: We can do it in `init`, it is called once from `App.main` and it is very 
early entry point so we can just initialise property:

```
@main
struct TestApp: App {
    private var hasOnboarded: Bool
    
    init() {
        let defaults = UserDefaults.standard
        hasOnboarded = defaults.bool(forKey: "hasOnboarded")
    }

    // ... other code
}
