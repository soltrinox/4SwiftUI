```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: How to use view modifiers only available for iOS 14+ with deployment target of iOS 13 (by Jordan H)

A: Mark `body` as `@ViewBuilder` - this will allow track internal different return types automatically, and remove `return` because explicit return disables view builder wrapper.

So here is fixed variant

```
struct CompatibleTextCaseModifier: ViewModifier {

    @ViewBuilder
    func body(content: Content) -> some View {
        if #available(iOS 14.0, *) {
            content
                .textCase(.none)
        } else {
            content
        }
    }
}
```

and usage

    Section(header:
        Text("Header")
            .modifier(CompatibleTextCaseModifier())
            .font(.system(size: 14, weight: .bold))
            .foregroundColor(.secondary)
            .padding(.top, 50)
    ) {
        Text("test")
    }

