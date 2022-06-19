```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: Generic where clauses with views (by Cheezzhead)

A: I propose to reverse mind and put generics extension not in view, but in type, because in this scenario actually a value type is an entity that configures dependency.

Tested with Xcode 13.3 / iOS 15.4

![ezgif com-gif-maker-61](https://user-images.githubusercontent.com/62171579/168672067-c60cfebc-42b8-487c-9ae6-dcac0c4c1605.gif)

Main part of idea:

```
protocol Inputable {
	associatedtype V: View
	@ViewBuilder static func inputField(_ binding: Binding<Self>) -> Self.V
}

extension String: Inputable {
	static func inputField(_ binding: Binding<Self>) -> some View {
		TextField("Enter text...", text: binding)
	}
}
```

and usage
```
struct TestInputView<ValueType: Inputable>: View {
    // ... other code

	var body: some View {
		ValueType.inputField(binding)
	}
}
```

[Complete test module in project is here](https://github.com/Asperi-Demo/4SwiftUI/blob/master/PlayOn_iOS/PlayOn_iOS/Findings/TestInputViewGenerics.swift)
