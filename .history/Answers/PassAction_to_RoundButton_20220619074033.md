```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: SwiftUI + Dynamic action closure for Button (by Kampai)

A: Button update ...

    struct RoundButton: View {
        var image: String
        var title: String
        var action: () -> Void        // << here !!
    
        var body: some View {
            VStack {
                Button(action: action) {      // << here !!
                    Image(image)
                       .renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.template))
                }
        ...

Usage update ...

    RoundButton(image: "chat", title: "message") {
        print("Button pressed")
    }

