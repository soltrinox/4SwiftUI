```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: SwiftUI Pass Value from Geometry Reader to Function (by dot3)

A: 

> Is there a way to pass the value calculated by GeometryReader to a function?

Yes, you can do this. The var `metrics` is a `GeometryProxy`, so function signature should be like in the following example


    private func resizedImage(for metrics: GeometryProxy) -> some View {
        self.image
           .resizable()
           .frame(width:  (metrics.size.height - 10) * 0.561403509 , height: metrics.size.height - 10, alignment: .top)
           .clipped()
    }

so your usage

    GeometryReader { metrics in
        ZStack{
           self.resizedImage(for: metrics)
        }
    }

**Update: for *changed request***

Assuming you have in child view binding as

    @Binding var cropSize: CGSize

the above function can be modified as follow

    private func resizedImage(for metrics: GeometryProxy) -> some View {
        let size = CGSize(width: (metrics.size.height - 10) * 0.561403509, 
                               height: metrics.size.height - 10)
        self.cropSize = size
        return self.image
           .resizable()
           .frame(width: size.width, height: size.height, alignment: .top)
           .clipped()
    }

