```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: preferredScreenEdgesDeferringSystemGestures in SwiftUI (Aspid)

A: Just override it in custom hosting controllers

```
class MyHostingController<Content: View>: UIHostingController<Content> {
    open override var preferredScreenEdgesDeferringSystemGestures: UIRectEdge{
        return [.all];
    }
}
```

and use it as root controller

    let window = UIWindow(windowScene: windowScene)

    let controller = MyHostingController(rootView: contentView)
    controller.setNeedsUpdateOfScreenEdgesDeferringSystemGestures()

    window.rootViewController = controller

