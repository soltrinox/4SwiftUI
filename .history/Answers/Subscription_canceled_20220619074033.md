```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: Get status of cancellation of my subscription in Combine iOS (by BilalReffas)

A: It is possible via handling events

```swift
subject
    .handleEvents(receiveCancel: {
        print(">> cancelled")         // << here !!
    })
    .sink(receiveCompletion: { completion in
        switch completion {
        case .failure(let error):
            print("Failed with: \(error.localizedDescription)")
        case .finished:
            print("Finished")
        }
    }) { string in
        print(string)
    }.store(in: &disposeBag)
```
