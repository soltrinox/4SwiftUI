```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: SwiftUI - memory leak in NavigationView (by Vahagn Gevorgyan)

A: I recommend design-level solution, ie. decomposing navigation bar item into separate view component breaks that undesired cycle referencing that result in leak.

Tested with Xcode 11.4 / iOS 13.4 - `ViewModel` destroyed as expected.

Here is complete test module code:

```
struct CloseBarItem: View { // separated bar item with passed binding
    @Binding var presentation: PresentationMode
    var body: some View {
        Button(action: {
            self.presentation.dismiss()
        }) {
            Text("close")
        }
    }
}

struct ModalView: View {
    @Environment(\.presentationMode) private var presentation
    @ObservedObject var viewModel: ViewModel

    var body: some View {

        NavigationView {
            Text("Modal is presented")
            .navigationBarItems(leading: 
                CloseBarItem(presentation: presentation)) // << decompose
        }
    }
}

class ViewModel: ObservableObject {    // << tested view model
    init() {
        print(">> inited")
    }

    deinit {
        print("[x] destroyed")
    }
}

struct TestNavigationMemoryLeak: View {
    @State private var showModal = false
    var body: some View {
        Button("Show") { self.showModal.toggle() }
            .sheet(isPresented: $showModal) { ModalView(viewModel: ViewModel()) }
    }
}
```

