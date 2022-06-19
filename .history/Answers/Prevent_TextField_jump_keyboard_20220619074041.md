```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: SwiftUI | Stop TextField from moving up with keyboard automatically (by Mofawaw)

A: Here is possible solution for your scenario. Tested with Xcode 12 / iOS 14

![bWQ86](https://user-images.githubusercontent.com/62171579/169648652-324c162d-94c0-42a3-8bdc-713438b11621.gif)

```
  var body: some View {
    VStack {
      Spacer()
      TextField("Test", text: $textInput)
      Spacer()
    }
    .ignoresSafeArea(.keyboard, edges: .bottom)
  }
```
