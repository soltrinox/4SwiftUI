```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: Open a FileDialog in SwiftUI on MacOs (by mica)

A: Actually you don't need to, because `NSOpenPanel` is a window, not a view controller. 

Here is possible approach. Tested with Xcode 11.7 / macOS 10.15.6

```
struct ContentView: View {
  @State var filename = "Filename"
  @State var showFileChooser = false

  var body: some View {
    HStack {
      Text(filename)
      Button("select File")
      {
        let panel = NSOpenPanel()
        panel.allowsMultipleSelection = false
        panel.canChooseDirectories = false
        if panel.runModal() == .OK {
            self.filename = panel.url?.lastPathComponent ?? "<none>"
        }
      }
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
  }
}
```
