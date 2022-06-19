```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: How to make a semi-transparent Navigation Bar in SwiftUI? (by Hamster)

A: A first variant is to add translucency for navigation bar

![NEOkt](https://user-images.githubusercontent.com/62171579/166864521-8530defd-d8be-4c5c-8663-4cce324ab6f6.png)

	init() {
	  UINavigationBar.appearance().isTranslucent = true
    }

alternate is to reset appearance completely, like

![OVKQQ](https://user-images.githubusercontent.com/62171579/166864575-b527bc2e-6593-4030-abaa-0e53b049b638.png)

	init() {
		let appearance = UINavigationBarAppearance()
		appearance.configureWithTransparentBackground()
		appearance.backgroundColor = UIColor.systemBackground.withAlphaComponent(0.5)
		UINavigationBar.appearance().standardAppearance = appearance
	}

Demo prepared and tested with Xcode 12 / iOS 14
