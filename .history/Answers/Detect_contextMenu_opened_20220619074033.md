```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: SwiftUI detect when contextMenu is open (by charelf)

A: A possible approach is to use simultaneous gesture for this purpose, like

    Text("Demo Menu")
    	.contextMenu(menuItems: {
     		Button("Button") {}
        })
        .simultaneousGesture(LongPressGesture(minimumDuration: 0.5).onEnded { _ in
        	print("Opened")
        })

Tested with Xcode 13.2 / iOS 15.2
