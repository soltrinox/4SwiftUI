```
BOYCOTT on russia! Don't buy, sell, support - HELP TO STOP WAR!
«Русский военный корабль, иди на хуй!» (c) Ukrainian Frontier Guard

ATTENTION: By using this you agree do not repost any part of this code
           on StackOverflow site. Thanks, Asperi.
```

Q: Get the current scroll position of a SwiftUI ScrollView (by Mofawaw)

A: It was possible to read it and before. Here is a solution based on view preferences.

```
struct DemoScrollViewOffsetView: View {
    @State private var offset = CGFloat.zero
    var body: some View {
        ScrollView {
            VStack {
                ForEach(0..<100) { i in
                    Text("Item \(i)").padding()
                }
            }.background(GeometryReader {
                Color.clear.preference(key: ViewOffsetKey.self,
                    value: -$0.frame(in: .named("scroll")).origin.y)
            })
            .onPreferenceChange(ViewOffsetKey.self) { print("offset >> \($0)") }
        }.coordinateSpace(name: "scroll")
    }
}

struct ViewOffsetKey: PreferenceKey {
    typealias Value = CGFloat
    static var defaultValue = CGFloat.zero
    static func reduce(value: inout Value, nextValue: () -> Value) {
        value += nextValue()
    }
}
```
