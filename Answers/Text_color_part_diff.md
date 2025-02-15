```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: swiftui blendMode is not match to sketch combine mode of difference (by mars)

A: It takes into account background, so diff blue from white gives orange. So at first let's remove background from blending by using `compositingGroup`

```
struct DiffView: View {
    var body: some View {
        ZStack() {
        Color.blue
                .frame(width: 50, height: 50, alignment: .center)
            Text("DIFF")
                .foregroundColor(Color.blue)
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .offset(x: 20, y: 0)
                .blendMode(.difference)
        }
        .compositingGroup()
        .frame(width: 100, height: 100, alignment: .center)
    }
}
```

which gives

![uxzwy](https://user-images.githubusercontent.com/62171579/172926415-7a25ffe4-b39d-4c45-a007-fc2a6a2d913a.png)


Well it is because pure difference does not have anything in background and thus gives `black` color. So your effect can be achieved by the following


```
struct DiffView: View {
    var body: some View {
        ZStack() {
        Color.orange
                .frame(width: 50, height: 50, alignment: .center)
            Text("DIFF")
                .foregroundColor(Color.orange)
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .offset(x: 20, y: 0)
                .blendMode(.difference)
        }
        .compositingGroup()
        .colorInvert()
        .frame(width: 100, height: 100, alignment: .center)
    }
}
```
![MMStY](https://user-images.githubusercontent.com/62171579/172926372-2c5a58e6-5bde-4180-8c62-304a7c4773e7.png)

