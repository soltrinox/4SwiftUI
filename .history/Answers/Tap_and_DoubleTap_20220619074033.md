```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: SwiftUI on macOS - handle single-click and double-click at the same time (by Vojto)

A: Here is possible approach (tested with Xcode 11.2 / macOS 10.15) - order of modifiers might be important,
as usual for SwiftUI.

    struct MyView: View {
        var body: some View {
            Rectangle()
                .fill(Color.blue)
                .frame(width: 200, height: 200)
                .gesture(TapGesture(count: 2).onEnded {     // << here !!
                    print("double clicked")
                })
                .simultaneousGesture(TapGesture().onEnded {  // << here !!
                    print("single clicked")
                })
        }
    }

