```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: How to make a view between Spacers always at the center in an HStack? (by )

A: Here is possible approach for your case. Demo prepared & tested with Xcode 12 / iOS 14

![ymCLu](https://user-images.githubusercontent.com/62171579/165324935-2553df1f-85e6-4b42-8253-9ad4305f9a93.png)


        HStack {
            Spacer()
                .overlay(Text("Foooooooo"), alignment: .leading)

            Button(action: { }) {
                Text("Bar")
            }

            Spacer()
                .overlay(Text("Baz"), alignment: .trailing)
        }
        .font(.system(size: 16, weight: .heavy, design: .rounded))
        .padding()

