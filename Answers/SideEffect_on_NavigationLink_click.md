```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: How do you perform work aside from just pushing the new view when using NavigationLink? (by ajf1000)

A: Here is the simplest way - react on appear of destination

    NavigationView {
         NavigationLink("Click Here", destination: 
             AnotherView()
                 .onAppear {
                     // any action having access to current view context
                 })
    }

Retested with Xcode 13.3
