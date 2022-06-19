```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: SwiftUI: How to convert an Image to jpeg data? (by ajf1000)

A: The SwiftUI `Image` is analog of `UIImageView`, not `UIImage`. So if you need to operate with image model, you have to store it explicitly as `UIImage` and operate with it, providing into view as in below example:

```
struct ContentView: View {
   let imageModel: UIImage        // << model

   var body: some View {
      Image(uiImage: imageModel)  // << view
        .onTapGesture {
            // work with model

            let data = self.imageModel.jpegData(compressionQuality: 0.5)
            // .. do something with data
        }
   }
}
```


