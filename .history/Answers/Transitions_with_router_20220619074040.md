```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: Transitions not working with a router in SwiftUI (by Elvin)

A: Add animation to parent container

```
var body: some View {
    VStack {
        if authRouter.viewName == AuthViews.Onboarding {
            Onboarding()
        } else if authRouter.viewName == AuthViews.SignIn {
            SignIn()
                .transition(.scale)
        } else if authRouter.viewName == AuthViews.SignUp {
            SignUp()
                .transition(.move(edge: .trailing))
        } else if authRouter.viewName == AuthViews.ForgotPassword {
            ForgotPassword()
                .transition(.move(edge: .trailing))
        }
    }.animation(.default)     // << here !! (any animation you like)
}
```

and make sure that `authRouter.viewName` is always updated on `DispatchQueue.main`.
