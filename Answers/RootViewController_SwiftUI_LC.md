```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: Hosting Controller When Using iOS 14 @main (by davextreme)

A: Here is a possible approach (tested with Xcode 12 / iOS 14)... but if 
you intend to use UIKit features heavily it is better to use UIKit 
Life-Cycle, as it gives more flexibility to configure UIKit part.

```
struct ContentView: View {

    var body: some View {
      Text("Demo Root Controller access")
        .withHostingWindow { window in
            if let controller = window?.rootViewController {
                // .. do something with root view controller
            }
        }
    }
}

extension View {
    func withHostingWindow(_ callback: @escaping (UIWindow?) -> Void) -> some View {
        self.background(HostingWindowFinder(callback: callback))
    }
}

struct HostingWindowFinder: UIViewRepresentable {
    var callback: (UIWindow?) -> ()

    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        DispatchQueue.main.async { [weak view] in
            self.callback(view?.window)
        }
        return view
    }

    func updateUIView(_ uiView: UIView, context: Context) {
    }
}
```
