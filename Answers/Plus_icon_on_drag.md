```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: Why is there a "plus" icon at the top right corner of my view? (by amone)

A: It is managed by `DropProposal` drop operation and by default (if you do not provide explicit drop delegate) is `.copy` as documented, which adds '+' sign. By this you inform user that something will be duplicated.

    /// Tells the delegate that a validated drop moved inside the modified view.
    ///
    /// Use this method to return a drop proposal containing the operation the
    /// delegate intends to perform at the drop ``DropInfo/location``. The
    /// default implementation of this method returns `nil`, which tells the
    /// drop to use the last valid returned value or else
    /// ``DropOperation/copy``.
    public func dropUpdated(info: DropInfo) -> DropProposal?

if you want to manage it explicitly then provide DropDelegate with implemented drop update as in below demo

```
func dropUpdated(info: DropInfo) -> DropProposal?
   // By this you inform user that something will be just relocated
   return DropProposal(operation: .move)
}
```
