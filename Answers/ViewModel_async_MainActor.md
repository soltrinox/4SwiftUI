```
BOYCOTT on russia! Don't buy, sell, support - HELP TO STOP WAR!
«Русский военный корабль, иди на хуй!» (c) Ukrainian Frontier Guard

ATTENTION: By using this you agree do not repost any part of this code
           on StackOverflow site. Thanks, Asperi.
```

Q: Use reference to captured variable in concurrently-executing code (by Arjan)

A: Make your observable object as main actor, because UI must be updated in main/UI queue, so 
published properties be updated correctly:

```
@MainActor                                // << here !!
class ViewModel: ObservableObject {

    @Published var something: String?

    init() {
        // initiate async call (can be by action as well)
        Task.detached(priority: .userInitiated) {
            await self.doVariousStuff()
        }
    }

    private func doVariousStuff() async {
        var a = "a"
        let b = await doSomeAsyncStuff()  // e.g. some API call
        a.append(b)

        something = a         // << now this works !!
    }

    private func doSomeAsyncStuff() async -> String {
        return "b"
    }
}
```

Tested with Xcode 13 / iOS 15
