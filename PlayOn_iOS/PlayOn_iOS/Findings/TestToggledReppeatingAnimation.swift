// BOYCOTT on russia! Don't buy, sell, support - HELP TO STOP WAR!
// «Русский военный корабль, иди на хуй!» (c) Ukrainian Frontier Guard
//
// ATTENTION: 	By using this you agree do not repost any part of this code
//					on StackOverflow site. Thanks, Asperi.

import SwiftUI

struct TestToggledReppeatingAnimation: View {
	var body: some View {
		ContentViewPreviewer()
			.preferredColorScheme(.dark)
	}

	struct ContentView: View {
		@Binding var isRepeatAnimation: Bool
		@State var lineWidth: CGFloat = 5

		var body: some View {
			Rectangle()
				.stroke(Color.blue, style: StrokeStyle(lineWidth: isRepeatAnimation ? 0 : lineWidth))
				.frame(width: 100, height: 100)
				.animation(isRepeatAnimation ? repeatAnimation : Animation.default, value: isRepeatAnimation)
		}

		var repeatAnimation: Animation {
			Animation.easeInOut.repeatForever(autoreverses: true)
		}
	}

	struct ContentViewPreviewer: View {
		@State var repeated = false
		var body: some View {
			VStack {
				ContentView(isRepeatAnimation: $repeated)
				Button("Toggle") {
					repeated.toggle()
				}
			}
		}
	}
}

struct TestToggledReppeatingAnimation_Previews: PreviewProvider {
	static var previews: some View {
		TestToggledReppeatingAnimation()
	}
}
