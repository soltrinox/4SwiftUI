```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: ScrollView Doesn't Scroll with Geometry Reader as Child (by Sergio Diaz)

A: `GeometryReader` is not a regular child and you cannot use it in unknown size area (which is ScrollView), because you got into chicken-egg problem when parent-child expects size of each other.

Instead use internal geometry reader on content background, so content have defined size and you can read its position in other (global) coordinate system, like

    ScrollView (.vertical, showIndicators: false) {
      VStack {
          Text("This is filler text").padding(.vertical, 100)
          Text("This is filler text").padding(.vertical, 100)
          Text("This is filler text").padding(.vertical, 100)
          Text("This is filler text").padding(.vertical, 100)
          Text("This is filler text").padding(.vertical, 100)
      }.background(
         GeometryReader { inner in
              // use proxy here
         })
    }

