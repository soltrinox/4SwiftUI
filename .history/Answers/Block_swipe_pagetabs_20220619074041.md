```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: SwiftUI TabView PageTabViewStyle prevent changing tab? (by Hoopes)

A: The solution from mentioned reference works, just the swipe is blocked not by `gesture(nil)`, but by `gesture(DragGesture())`. And view should be full-tab-content-view-wide, like

    TabView {
          ForEach(0..<5) { idx in
            Text("Cell: \(idx)")
              .frame(maxWidth: .infinity, maxHeight: .infinity)
              .contentShape(Rectangle())
              .gesture(DragGesture())      // this blocks swipe
            //.gesture(isSearching ? DragGesture() : nil)  // blocks by some state condition

          }
        }
        .tabViewStyle(PageTabViewStyle())

Tested with Xcode 12.1 / iOS 14.1
