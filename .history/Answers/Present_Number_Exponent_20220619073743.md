```
BOYCOTT on russia! Don't buy, sell, support - HELP TO STOP WAR!
«Русский военный корабль, иди на хуй!» (c) Grybov, Ukrainian Frontier Guard

ATTENTION: By using this you agree do not repost any part of this code
           on StackOverflow site. Thanks, Asperi.
```

Q: How to make exponents in the SwiftUI (by Antonio Adrian Chavez)

A: Using `+` for `Text` looks more natural... as variant

![O9YSx](https://user-images.githubusercontent.com/62171579/167285176-4ba6762a-683e-4609-9d97-169c60af3894.png)

    var body: some View {
        Text("8") + Text("2").font(.system(.footnote))
                       .baselineOffset(UIFont.systemFontSize * 2 / 3)  // << just example of culc
    }
