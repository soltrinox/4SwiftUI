```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: SwiftUI iOS - how to capture hardware key events (by Jesper Kristiansen)

A: It needs to override hosting view controller instead and all works. Tested with Xcode 11.2 / iOS 13.2

Here is example code

    class KeyTestController<Content>: UIHostingController<Content> where Content: View {
    
        override func becomeFirstResponder() -> Bool {
            true
        }
        
        override var keyCommands: [UIKeyCommand]? {
            return [
                UIKeyCommand(input: "1", modifierFlags: [], action: #selector(test)),
                UIKeyCommand(input: "0", modifierFlags: [], action: #selector(test)),
                UIKeyCommand(input: UIKeyCommand.inputLeftArrow, modifierFlags: [], action: #selector(test))
            ]
        }
    
        @objc func test(_ sender: UIKeyCommand) {
            print(">>> test was pressed")
        }
    
    }

and somewhere in `SceneDelegate` below

    window.rootViewController = KeyTestController(rootView: contentView)


