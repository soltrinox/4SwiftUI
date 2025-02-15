```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: SwiftUI TextEditor Scroll with Show Keyboard Not Working (by JohnSF)

A: I assume you should store subscriber as below

```
struct AdaptsToSoftwareKeyboard: ViewModifier {

    @State var currentHeight: CGFloat = 0
	@State private var cancelable: AnyCancellable?
	
    func body(content: Content) -> some View {
        content
            .padding(.bottom, self.currentHeight)
            .edgesIgnoringSafeArea(self.currentHeight == 0 ? Edge.Set() : .bottom)
            .onAppear(perform: subscribeToKeyboardEvents)
    }

    private let keyboardWillOpen = NotificationCenter.default
        .publisher(for: UIResponder.keyboardWillShowNotification)
        .map { $0.userInfo![UIResponder.keyboardFrameEndUserInfoKey] as! CGRect }
        .map { $0.height }

    private let keyboardWillHide =  NotificationCenter.default
        .publisher(for: UIResponder.keyboardWillHideNotification)
        .map { _ in CGFloat.zero }

    private func subscribeToKeyboardEvents() {
        self.cancelable = Publishers.Merge(keyboardWillOpen, keyboardWillHide)
            .subscribe(on: RunLoop.main)
            .assign(to: \.self.currentHeight, on: self)
    }
}
```
