```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: SwiftUI macOS - Create clickable hyperlink (by Peter Schorn)

A: Here is possible solution. Tested with Xcode 11.4 / macOS 10.15.4

![ai0bV](https://user-images.githubusercontent.com/62171579/173740030-62ab8959-0e19-4ba2-80c5-fc353b710b64.gif)

    Button(action: {
       // link action here
    }) {
        Text("www.stackoverflow.com").underline()
            .foregroundColor(Color.blue)
    }.buttonStyle(PlainButtonStyle())
    .onHover { inside in
        if inside {
            NSCursor.pointingHand.push()
        } else {
            NSCursor.pop()
        }
    }

