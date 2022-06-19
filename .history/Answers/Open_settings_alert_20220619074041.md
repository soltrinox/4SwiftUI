```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: Is there an equivalent of openSettingsURLString in SwiftUI? (by Alexis Wei)

A: Here it is

```
.alert(isPresented: $alertVisible) {
     Alert (title: Text("Camera access required to take photos"),
            message: Text("Go to Settings?"),
            primaryButton: .default(Text("Settings"), action: {
                UIApplication.shared.open(URL(string: UIApplication.openSettingsURLString)!)
            }),
            secondaryButton: .default(Text("Cancel")))
        }

```
