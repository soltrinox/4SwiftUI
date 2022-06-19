```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: How to make List Item whole row with a button inside not clickable in Swift UI? (by pizzae)

A: List detects active default SwiftUI elements in a row (in this case a button, but NavigationLink handled 
in same way) and tranfer action to entire row by-design. The solution for this is to make it **non-default**
button style, like Plain or your custom

    Button(action: {}) {
        Text("Button")
           .frame(maxWidth: .infinity, maxHeight: .infinity)
           .contentShape(Rectangle())
    }
    .buttonStyle(PlainButtonStyle())  // << here !!

See also [this](https://github.com/Asperi-Demo/4SwiftUI/blob/master/Answers/List_row_wide_button.md) answer 
for example of do similar with custom button style
