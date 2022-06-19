```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: How can I make a Generic PreferenceKey in SwiftUI? (by swiftPunk)

A: Here is a possible approach to move with. Tested as worked with Xcode 12.4 / iOS 14.4

```
protocol Initable {
	init()
}

extension String: Initable {
}

struct CustomPreferenceKey<T: Equatable & Initable>: PreferenceKey {
    typealias Value = T

    static var defaultValue: T { get { T() } }

    static func reduce(value: inout Value, nextValue: () -> Value) {
        value = nextValue()
    }
}

struct ContentView: View {

    @State private var stringOfText: String = "Hello, world!"

    var body: some View {

        Text(stringOfText)
            .preference(key: CustomPreferenceKey<String>.self, value: stringOfText)
            .onPreferenceChange(CustomPreferenceKey<String>.self) { newValue in print(newValue) }
    }
}
```
