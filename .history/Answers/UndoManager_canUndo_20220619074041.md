```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: UndoManager's canUndo property not updating in SwiftUI (by PointOfNilReturn)

A: `UndoManager.canUndo` is not KVO compliant, so use some notification publisher to track state, like below

    struct MyView: View {
        @Environment(\.undoManager) var undoManager
        @State private var canUndo = false
    
        // consider also other similar notifications
        private let undoObserver = NotificationCenter.default.publisher(for: .NSUndoManagerDidCloseUndoGroup)
    
        var body: some View {
            Button("Undo") { }
                .disabled(!canUndo)
                .onReceive(undoObserver) { _ in
                    self.canUndo = self.undoManager!.canUndo
                }
        }
    }

