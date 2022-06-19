```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: macOS SwiftUI Table with contextMenu (by Marcos Tanaka)

A: You can make cell view with the following extensions and use it for each column cell, then it will be clickable in any row place

	Text("Item at \($0.name!)")
		.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading) // << this !!
		.contentShape(Rectangle())                                            // << this !!
		.contextMenu {
			Button(action: {}) { Text("Action 1") }
			Divider()
			Button(action: {}) { Text("Action 2") }
			Button(action: {}) { Text("Action 3") }
		}

