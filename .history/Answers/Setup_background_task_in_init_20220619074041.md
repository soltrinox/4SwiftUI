```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: Swift • How can I initiate a Background Task from a View's Initializer? (christophriepe)
  
A: Here is a simple demo (as you want to do it in `init`, however, since I don't know your scenario, probably it is better to move it into separated method and call explicitly)

Tested with Xcode 12.5 / iOS 14.5

```
struct DemoBackgroundTaskView: View {

  class ViewModel: ObservableObject {
    @Published var finished = false

    init() {
      print("Init") // test called once

            // set up once performed background task
      DispatchQueue.global(qos: .background).async {

        sleep(10) // do your long task here

        DispatchQueue.main.async { [weak self] in
          self?.finished = true
        }
      }
    }
  }

  @StateObject private var vm = ViewModel()

  var body: some View {
    Text(vm.finished ? "Done" : "Loading...")
  }
}
```
