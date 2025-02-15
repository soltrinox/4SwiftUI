```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: SwiftUI button action as soon as button is clicked not on click release (by Roshan Chamlagain)

A: Here is a possible approach - to use custom `ButtonStyle` to inject custom touch down action

Tested with Xcode 12 / iOS 14

```
struct PressedButtonStyle: ButtonStyle {
    let touchDown: () -> ()
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .foregroundColor(configuration.isPressed ? Color.gray : Color.blue)
            .background(configuration.isPressed ? self.handlePressed() : Color.clear)
    }

    private func handlePressed() -> Color {
        touchDown()           // << here !!
        return Color.clear
    }
}

struct DemoPressedButton: View {
    var body: some View {
        Button("Demo") {
            print(">> tap up")    // << can be empty if nothing needed
        }
        .buttonStyle(PressedButtonStyle {
            print(">> tap down")
        })
    }
}
```
