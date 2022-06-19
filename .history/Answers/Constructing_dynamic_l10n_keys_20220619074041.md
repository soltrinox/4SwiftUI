```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: SwiftUI: LocalizedStringKey with indices (by Michael)

> "Question1"       = "blablabla";<br>
> "Question2"       = "blablablub";<br>
> "Question3"       = "bliblablub";<br>

A: Here is a solution. Tested with Xcode 12.1 / iOS 14.1

    ForEach (1..<4) { value in
        Text(LocalizedStringKey(stringLiteral: "Question\(value)"))
    }
