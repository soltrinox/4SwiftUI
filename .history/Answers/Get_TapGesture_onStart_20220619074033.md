```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: SwiftUI TapGesture onStart / TouchDown (by davidev)

A: If by pure SwiftUI then only indirectly for now. 

Here is an approach. Tested with Xcode 11.4.

*Note: `minimumDistance: 0.0` below is important !!*

```
MyView()
    .gesture(DragGesture(minimumDistance: 0.0, coordinateSpace: .global)
        .onChanged { _ in
            print(">> touch down") // additional conditions might be here
        }
        .onEnded { _ in
            print("<< touch up")
        }
    )
```
