```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: How to navigate between NavigationLink while leave a part of main window stay the same in SwiftUI (by Yiming Designer)

A: In this case the *default* details view and navigated details view should be the same, but updated content can be injected in it in navigation link.

Here is a demo. Tested with Xcode 13.3 / iPadOS 15.4

![N6Zxv](https://user-images.githubusercontent.com/62171579/167248862-5d8550ba-5a33-4c16-b654-0edfb4b38b62.png)

```
struct ContentView: View {
	var body: some View {
		NavigationView {
			List {
				NavigationLink { DetailsView { DiscoverView() } }
			      label: { Label("Discover", systemImage: "magnifyingglass") }
				NavigationLink { DetailsView { SongsView() } }
			      label: { Label("Songs", systemImage: "music.note") }
				NavigationLink { DetailsView { ArtistsView() } }
			      label: { Label("Artists", systemImage: "music.mic") }
			}
			.navigationBarHidden(true)
			.listStyle(SidebarListStyle())

			DetailsView { SongsView() }  // << here default !!
		}
	}
}

struct DetailsView<V: View>: View {
	@ViewBuilder var content: () -> V  // << injected via builder !!
	var body: some View {
		VStack(spacing: 0) {
			AlwaysStayView()
			content()          // << changed part here !!
		}
		.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
		.navigationBarHidden(true)
	}
}
```
