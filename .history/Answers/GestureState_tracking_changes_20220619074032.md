```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: How to run code when swiftui gesture recognizers begin (by chartman)

A: There is special `@GestureState`, which can be used for such purpose. So, here is possible approach

    struct TestGestureBegin: View {
    
        enum Progress {
            case inactive
            case started
            case changed
        }
        @GestureState private var gestureState: Progress = .inactive // initial & reset value
    
        var body: some View {
            VStack {
                Text("Drag over me!")
            }
            .frame(width: 200, height: 200)
            .background(Color.yellow)
            .gesture(DragGesture(minimumDistance: 0)
                .updating($gestureState, body: { (value, state, transaction) in
                    switch state {
                        case .inactive:
                            state = .started
                            print("> started")
                        case .started:
                            state = .changed
                            print(">> just changed")
                        case .changed:
                            print(">>> changing")
                    }
                })
                .onEnded { value in
                    print("x ended")
                }
            )
        }
    }

