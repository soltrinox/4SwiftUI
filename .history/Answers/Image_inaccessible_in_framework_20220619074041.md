```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: Images inaccessible from asset catalog in a my framework (by strangetimes)

A: By default

`Image("MyImage")` is `Image("MyImage", bundle: Bundle.main)`

ie. in bundle of application.

You have to explicitly specify bundle (of framework) in which Assets catalog is located, as

```Image("MyImage", bundle: bundle)```

where `bundle` is instantiated in usual way by class or identifier.
