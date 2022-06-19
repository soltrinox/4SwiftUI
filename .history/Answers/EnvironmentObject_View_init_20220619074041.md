```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: SwiftUI EnvironmentObject not available in View initializer? (by Darrell Root)

A: **Yes, SwiftUI EnvironmentObject not available in View initializer.** Why? It is simple - 
it is injected **after** object initialiazation.

Let's consider how it is done on example of above `ContentView`:

    let contentView = ContentView(showCapture: true).environmentObject(appSettings)

so what's going on here? Here

1) instantiation & initialisation of value for the type ContentView
```
let newInstance = ContentView.init(showCapture: true) 
```

2) calling function `func environmentObject()` on `newInstance` injected `appSetting` property
```
let contentView = newInstance.environmentObject(appSettings)
```
