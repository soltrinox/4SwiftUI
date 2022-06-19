```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: Delete a item row from list - SwiftUI (by Milad)

    ForEach($taskVM.tasks) { $task in

A: If your `Task` is `Identifiable` (if not it worth making it), then you could  make delete action like

	.swipeActions(edge: .leading) {
		Button(role: .destructive){
			withAnimation {
				tasks.removeAll { task.id == $0.id }
			}
		} label: {
			Label("Delete", systemImage: "trash")
		}
	}

