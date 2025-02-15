```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: How to use UIApplicationDelegateAdaptor as ObservableObject? (by TruMan1)

A: Here is a demo of usage

1) Confirm `AppDelegate` to `ObservableObject`

```
class AppDelegate: NSObject, UIApplicationDelegate, ObservableObject {
	@Published var value: String = ""

    func application(_ application: UIApplication, didFinishLaunchingWithOptions 
                     launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {

        self.value = "test" // in any callback use your published property
        return true
    }
}
```

2) Register your `AppDelegate` as adaptor as you did

```
@main
struct Testing_SwiftUI2App: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    // ... other code
```

3) Declare `@EnvironmentObject` in some of your view, where needed

```
struct ContentView: View {
    @EnvironmentObject var appDelegate: AppDelegate    // << inject

    var body: some View {
	   Text("Value: \(appDelegate.value)")  // << use
    }
}

```

Tested with Xcode 12 / iOS 14.
