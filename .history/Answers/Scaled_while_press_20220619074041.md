```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: Tap animation on Image SwiftUI (by xmetal)

A: Here is a demo of possible solution. Tested with Xcode 12 / iOS 14.

![9mfZy](https://user-images.githubusercontent.com/62171579/169651877-883d977e-2652-4d8f-9dd7-4b46d0525595.gif)

```
struct DemoImageScale: View {
    @GestureState private var isDetectingPress = false

    var body: some View {
        Image("plant")
            .resizable().aspectRatio(contentMode: .fit)
            .scaleEffect(isDetectingPress ? 0.5 : 1)
            .animation(.spring())
            .gesture(LongPressGesture(minimumDuration: 0.1).sequenced(before:DragGesture(minimumDistance: 0))
                .updating($isDetectingPress) { value, state, _ in
                    switch value {
                        case .second(true, nil):
                            state = true
                        default:
                            break
                    }
            })
    }
}
```
