```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: Not Receiving scenePhase Changes (by davextreme)

A: Use inside scene root view of window representing a scene (usually `ContentView`), 
because they are in_scene-sentric, not for app-wide.

Tested with Xcode 12 / iOS 14 as worked.

```
struct ContentView: View {
    @Environment(\.scenePhase) private var scenePhase
    var body: some View {
        TestView()
            .onChange(of: scenePhase) { phase in
                switch phase {
                    case .active:
                        print(">> your code is here on scene become active")
                    case .inactive:
                        print(">> your code is here on scene become inactive")
                    case .background:
                        print(">> your code is here on scene go background")
                    default:
                        print(">> do something else in future")
                }
            }
    }
}
```

