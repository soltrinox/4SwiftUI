```
BOYCOTT on russia! Don't buy, sell, support - HELP TO STOP WAR!
«Русский военный корабль, иди на хуй!» (c) Ukrainian Frontier Guard

ATTENTION: By using this you agree do not repost any part of this code
           on StackOverflow site. Thanks, Asperi.
```

Q: SwiftUI Font how to use uppercased() with LocalizedStringKey (by Dan)

A: Here is a solution. Tested with Xcode 11.4 / iOS 13.4

![zwKzQ](https://user-images.githubusercontent.com/62171579/170852459-9ed92002-10ad-49a3-adaa-9d32b37772dc.png)

```
extension Font {
    public static let Heading1: Font = system(size: 34, weight: .black, design: .default).italic()
}

Text(NSLocalizedString("HELLO_WORLD", comment: "").uppercased())
    .font(.Heading1)

```
