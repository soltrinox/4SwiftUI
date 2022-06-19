```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: Deleting last row in ForEach (by aneurinc)

A: In the case of TextField in ForEach the Binding is cached, so deleting TextField makes Binding invalid
dureing refresh. Here is fix:

```
ForEach(Array(player.scores.enumerated()), id: \.element) { index, score in
    HStack {
        if self.isEditSelected {
            Button(action: {
                self.player.scores.remove(at: index)
            }, label: {
                Image("delete")
            })
        }        
        TextField("\(score)", value: Binding(   // << use proxy binding !!
            get: { self.player.scores[index] },
            set: { self.player.scores[index] = $0 }), 
            formatter: NumberFormatter())
    }
}
```
