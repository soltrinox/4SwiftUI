```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: SwiftUI: transform Binding into another Binding (by Stanislav Poslavsky)

A: If know transformation and it is symetric, then here is a demo of possible
approach on exampel of opposite of Bool:


    extension Binding where Value == Bool {
        public func negate() -> Binding<Bool> {
            return Binding<Bool>(get:{ !self.wrappedValue }, 
                set: { self.wrappedValue = !$0})
        }
    }
    
    struct TestInvertBinding: View {
        @State var isDone = true
        var body: some View {
            NavigationView {
                NavigationLink(destination: Text("Details"), 
                    isActive: self.$isDone.negate()) {
                    Text("Navigate")
                }
            }
        }
    }
    
    struct TestInvertBinding_Previews: PreviewProvider {
        static var previews: some View {
            TestInvertBinding()
        }
    }

