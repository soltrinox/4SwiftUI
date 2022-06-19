```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: SwiftUI List . How to make a round rectangle as an indicator for a selected row on a list (by Duck)

![uHwDO](https://user-images.githubusercontent.com/62171579/169648030-a985c1b5-1b4d-46ea-b4ce-425675637289.png)

A: Here is a demo of possible solution. Tested with Xcode 12 / iOS 14.

	.listRowBackground(Group {
		if selectedItem == item {
			Color.yellow.mask(RoundedRectangle(cornerRadius: 24))
		} else { Color.clear }
	})

