```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: How to allow reordering of rows in a SwiftUI List whist NOT in edit mode? (by Greg)

A: Here is how it is possible to be done - use activate needed edit mode programmatically
for List:

    import SwiftUI
    
    struct TestEditModeCustomRelocate: View {
        @State private var objects = ["1", "2", "3"]
        @State var editMode: EditMode = .active
        
        var body: some View {
            List {
                ForEach(objects, id: \.self) { object in
                    Text("Row \(object)")
                }
                .onMove(perform: relocate)
            }
            .environment(\.editMode, $editMode)
        }
        
        func relocate(from source: IndexSet, to destination: Int) {
            objects.move(fromOffsets: source, toOffset: destination)
        }
    }
    
