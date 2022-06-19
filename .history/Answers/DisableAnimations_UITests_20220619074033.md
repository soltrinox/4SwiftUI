```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: How to disable SwiftUI animations in UITests? (by nelson PARRILLA)

A: It is needed to be done explicitly (by-code) in main application, because UITests run in different process, ie. it should be like

```
struct YourApp: App {
	init() {
        let env = ProcessInfo.processInfo.environment
		if env["DISABLE_ANIMATIONS"] == "1" {          // << here !!
			UIView.setAnimationsEnabled(false)
		}
	}

    var body: some Scene {
      // ... scene here
    }
}
```

and then it can be used

    let app = XCUIApplication()
    app.launchEnvironment = ["DISABLE_ANIMATIONS": "1"]

Tested with Xcode 13.3 / iOS 15.4
