```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: SwiftUI ZStack: Align some descendants to bottom, and some to top (by Tomáš Kafka)

A: Here is possible approach

    ZStack {

     // content here

    }
    .overlay(YourTopView(), alignment: .top)
    .overlay(YourBottomView(), alignment: .bottom)

Other possible variant is to use one `.overlay` with `VStack` having two views and `Spacer` in between.
