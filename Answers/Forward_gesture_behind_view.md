```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: In SwiftUI, how can I perform a gesture but forward gestures to the view behind it? (by Wil Gieseler)

A: Here is a demo of possible approach. Tested with Xcode 11.4 / iOS 13.4

```
struct ContentView: View {
    var body: some View {
        VStack {
            Button("Button") { print("> button tapped")}
        }
        .frame(width: 200, height: 200)
        .contentShape(Rectangle())       // makes all area tappable
        .simultaneousGesture(TapGesture().onEnded({
             print(">>> tooltip area here")
        }))
        .border(Color.red)   // just for demo show area
    }
}
```
