```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: Swiftui how to programatically adjust spacing between images and text? (by RnadomG)

A: The `image(systemName:` actually renders characters (SF symbols), and so as one character differs from another ('W' vs 'i')
by bounding rect, similarly one SF symbol differs from another one. So to make them centered and aligned
they require the explicit frame to be provided, like

![cVGvT](https://user-images.githubusercontent.com/62171579/171901888-4d70e04f-3a1f-4afd-bc95-ca125db1e512.png)

```
HStack{
        Image(systemName: item.leftImage)
           .frame(width: 28)
        Text(item.text)
}
```
