```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: SwiftUI overlay cancels touches (by VojtaStavik)

A: If place overlay over button then, by default, everything non-transparent (ie. opacity = 0)
will block tap gestures. A possible solution is to disable hit testing for complete overlay.

The following code works on Xcode 11.2 / iOS 13.2

    struct TestButtonWithOverlay: View {
        var body: some View {
            Button(action: {
                print("Pressed")
            }) {
                Text("Press me")
                    .padding()
            }
                
            .overlay(
                LinearGradient(
                    gradient: Gradient(colors: [.clear, Color.black.opacity(0.3)]),
                    startPoint: .top,
                    endPoint: .bottom
                )
                .allowsHitTesting(false) // !!! must be exactly here
            )
        }
    }
