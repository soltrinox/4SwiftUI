// BOYCOTT on russia! Don't buy, sell, support - HELP TO STOP WAR!
// «Русский военный корабль, иди на хуй!» (c) Ukrainian Frontier Guard
//
// ATTENTION: 	By using this you agree do not repost any part of this code
//					on StackOverflow site. Thanks, Asperi.

import SwiftUI

struct TestTextFieldCustomFormat: View {
	@State private var text = ""

	var body: some View {
		TextField("", value: $text,
			format: TransparentFormat.format,
			prompt: Text("Enter text here")
		)
	}

	struct TransparentFormat: ParseableFormatStyle {
		static let format = Self()
		var parseStrategy = MyParseStrategy()

		struct MyParseStrategy : ParseStrategy {

			func parse(_ value: String) throws -> String {
				print("== parse: \(value)")
				return value
			}
		}

		func format(_ value: String) -> String {
			print("<< formated: \(value)")
			return value
		}
	}
}

struct TestTextFieldAlwaysFocus_Previews: PreviewProvider {
	static var previews: some View {
		TestTextFieldCustomFormat()
	}
}
