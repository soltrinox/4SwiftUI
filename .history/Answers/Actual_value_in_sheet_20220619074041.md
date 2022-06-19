```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: SwiftUI sheet doesn't access the latest value of state variables on first appearance (by marcgg)

A: You see value on time of sheet creation. If you want to track parent view state create sheet subview with binding to that state, like below. Binding will update subview when subview will appear.

Tested with Xcode 12 / iOS 14

```
struct DemoView: View {
    @State var showDetails: Bool = false
    var body: some View {
        VStack {
            Button(action: {
              showDetails = true
            }) {
                Text("Show sheet")
            }
        }.sheet(isPresented: $showDetails){
      SheetDetailView(flag: $showDetails)
        }
    }
}

struct SheetDetailView: View {
  @Binding var flag: Bool
  var body: some View {
    VStack {
      Text("showDetails: \(flag ? "yes" : "no")")
    }
  }
}
```
