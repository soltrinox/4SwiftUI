// BOYCOTT on russia! Don't buy, sell, support - HELP TO STOP WAR!
// «Русский военный корабль, иди на хуй!» (c) Ukrainian Frontier Guard
//
// ATTENTION: 	By using this you agree do not repost any part of this code
//					on StackOverflow site. Thanks, Asperi.

import SwiftUI

struct TestWindowFromScene: View {
	@EnvironmentObject var sceneDelegate: SceneDelegate

	var body: some View {
		Text("HELP TO STOP WAR")
			.onAppear {
				if let myWindow = sceneDelegate.window {
					print(">> window: \(myWindow.description)")
				}
			}
	}
}

struct TestWindowFromScene_Previews: PreviewProvider {
    static var previews: some View {
        TestWindowFromScene()
    }
}
