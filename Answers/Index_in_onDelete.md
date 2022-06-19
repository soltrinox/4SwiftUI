```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: How to get the index of a deleted row from a list in SwiftUI? (by Susca Bogdan)

A: If you remove by-one, then the following give you index of deleted row

```
func delete(at offsets: IndexSet) {     
      self.symptoms.remove(atOffsets: offsets)

      // here I want to make the HTTP request
      let index = offsets[offsets.startIndex]

      // ... use index in HTTP request
}
```
