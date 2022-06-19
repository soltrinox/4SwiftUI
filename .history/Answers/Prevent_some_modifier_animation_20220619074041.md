```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: iOS SwiftUI: prevent resizable() animation (by Andrea Miotto)

A: Use `.animation(nil)` right after property/ies which animations you want to disable, like below

    var body: some  View {
        GeometryReader { proxy in
            Image(uiImage: self.model.image)
                .resizable()
                .animation(nil)           // << disables animation
                .transition(.opacity)
                .animation(.default)      // << enables animation
                .scaledToFill()
                .frame(width: proxy.size.width, height: proxy.size.width)
                .aspectRatio(1/1, contentMode: .fit)
                .clipped()
        }
    }
