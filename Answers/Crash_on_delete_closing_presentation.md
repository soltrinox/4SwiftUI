```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: Deleting CoreData Item which is also an @ObservedObject in DetailView causing App Crash in Swift 5 (by christophriepe)

A: This looks like due to transition of presentation closing. I'm not sure that the issue is in provided code... but try the following (not tested - just idea - defer deleting):

    private func deleteUser() {
        mode.wrappedValue.dismiss()

        DispatchQueue.main.async {
          context.delete(user)
          do {
            try context.save()
          } catch let error as NSError {
              print("Error deleting User from Core Data: \(error), \(error.userInfo)")
          }
       }
    }
