```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: how to detect long press on Button? (by alamodey)

A: Here is possible variant (tested with Xcode 11.2 / iSO 13.2). 

    Button("Demo") {
        print("> tap")
    }
    .simultaneousGesture(LongPressGesture().onEnded { _ in
        print(">> long press")
    })

