```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: Reference EnvironmentObject in ObservableObject (by Ivan C Myrvold)

A: I would use in this case dependency injection via constructor... below is show possible approach on example of `UsersStore`, for others it would be the same

Changes in `UsersStore`

    class UsersStore: ObservableObject {
        var manager: UserManager
        
        init(manager: UserManager) { // << inject UserManager via constructor
            self.manager = manager 
        }
        ...
    }

Changes in `ContentView`

    struct ContentView: View {
        @EnvironmentObject var userManager: UserManager
        @ObservedObject var usersStore: UsersStore
    
        init(usersStore: UsersStore) {
            self.usersStore = usersStore // << inject UsersStore via contructor
        }

Changes in usage

    struct LoginView: View {
        @EnvironmentObject var userManager: UserManager
        var body: some View {
            Group {
                if userManager.isRegistered {
                    // userManager is valid here some UsersStore can be created
                    ContentView(usersStore: UsersStore(manager: self.userManager))



