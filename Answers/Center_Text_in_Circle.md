```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: Center Text into Circle (by Julian Re)

A: `.overlay` already has size of container with `Text` an `Circle` centred 
in it, so it is just needed to operate with insets of circle not shifting it, like below

![xoeiz](https://user-images.githubusercontent.com/62171579/165933398-33a8b6d9-d00d-4939-83eb-d67e494e8be6.png)

    Text(day.name)
        .frame(width: 35, height: 35, alignment: .center)
        .padding()
        .overlay(
            Circle()
            .stroke(Color.orange, lineWidth: 4)
            .padding(6)
        )


