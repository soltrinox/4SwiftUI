```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: SwiftUI - Does adding a shadow mess up interactivity on TextFields? (by brettfazio)

A: Probably this is a defect - you can submit feedback to Apple. Meanwhile I can propose solution - put shadow into background:

Tested with Xcode 11.4 / macOS 10.15.4

![vjy8Z](https://user-images.githubusercontent.com/62171579/172042167-fbd001e6-19dc-4993-b38b-b6e084b980ee.png)

```
VStack {
    HStack {
        TextField("First", text: $first)
        TextField("Second", text: $second)
    }
}
.frame(minWidth: 0, maxWidth: .infinity, minHeight: 100, maxHeight: 200)
.background(Color.gray.shadow(radius: 5))    // << here !!
```
