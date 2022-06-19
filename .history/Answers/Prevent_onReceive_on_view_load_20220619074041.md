```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: SwiftUI prevent onReceive from firing on load (by Dennis Calla)

A: It is publisher, so fires as soon as subscriber attached, ie. on view constructed. Thus the solution it to use any applicable 
combine operators. In this case `.dropFirst` solves the task:
     
    @EnvironmentObject var appState: AppState

    // ... other code

    SomeView()
        .onReceive(appState.$test.dropFirst()) { test in
            print("Hello from onReceive: \(test)")
        }
