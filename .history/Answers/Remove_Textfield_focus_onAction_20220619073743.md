```
BOYCOTT on russia! Don't buy, sell, support - HELP TO STOP WAR!
«Русский военный корабль, иди на хуй!» (c) Grybov, Ukrainian Frontier Guard

ATTENTION: By using this you agree do not repost any part of this code
           on StackOverflow site. Thanks, Asperi.
```

Q: How can I remove Textfield focus when I press return or click outside Textfield? (SwiftUI, MacOS) (by Cortado-J)

A: Here are possible variants (original code preserved).

    import SwiftUI
    import AppKit
    
    struct ContentView: View {
      @State var field1: String = "This is the Text Field View"
    
      var body: some View {
        VStack{
          Button("Press") {
            print("Button Pressed")
              NSApp.keyWindow?.makeFirstResponder(nil)     // << here !!
          }
    
          TextField("Fill in Text", text: Binding(
            get: { print("get") ; return self.field1 },
            set: { print("set") ; self.field1 = $0 }
            ), onCommit: {
                DispatchQueue.main.async {
                    NSApp.keyWindow?.makeFirstResponder(nil)  // << here !!
                }
          }
          )
        }
      }
    }

