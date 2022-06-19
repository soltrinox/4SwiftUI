```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: How to Bind a Value of a Dictionary to a SwiftUI Control? (by Jack B. Erger)

A: Most quick solution is to use wrapper binding, as in below snapshot

```
class AppData: ObservableObject {
    @Published var dataPoints: [UUID : DataPoint] = [:] {
    ...
}

...

Slider(value: Binding<Double>(
    get: { self.appData.dataPoints[self.dataPointID]?.value ?? 0 },
    set: { self.appData.dataPoints[self.dataPointID]?.value = $0}), in: 0...10000)
```
