```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: Position view relative to a another centered view (by Jul)

A: Here is possible solution - use spacers at both sides and place text into overlay of those 
spacers. As alternate, depending on context or others views layout, it might be used
Color.clear instead of Spacer. 

Tested with Xcode 11.4 / iOS 13.4

![zIWtw](https://user-images.githubusercontent.com/62171579/167773113-7087f42b-9824-4ced-a67d-35c9afeac832.png)

A view for List row

```
struct DemoCenteredNumberView: View {
    var value: Int
    var body: some View {
        HStack {
            Spacer().overlay(
                Text("Text on left side")
                    .frame(maxWidth: .infinity, alignment: .trailing)
            )
            Text("\(value)").padding()
            Spacer().overlay(
                Text("Text on right")
                    .frame(maxWidth: .infinity, alignment: .leading)
            )
        }
    }
}
```
