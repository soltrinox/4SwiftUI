```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: I'm trying to use "objectWillChange.send()" in an protocol extension but it's not working, any idea why? (by M.Serag)

protocol PlayerListStateProviding: ObservableObject {
    var players: [PlayerModel] { get set }
}

protocol PlayerListDeleting {
    var moc: NSManagedObjectContext { get set }
    func delete(at indexSet: IndexSet)
}

A: To use default observable object publisher in protocol you should limit it to corresponding type (because it is in extension to `ObservableObject`), as in

    extension PlayerListDeleting where Self: PlayerListStateProviding,  
                   Self.ObjectWillChangePublisher == ObservableObjectPublisher {
        func delete(at indexSet: IndexSet) {
            moc.delete(players.remove(at: indexSet.first!))
            objectWillChange.send()
        }
    }

```swift

@objc(ManagedEntity) public class ManagedEntity: NSManagedObject {
    @NSManaged public var name: String // = "Managed Entity"
    @NSManaged public var enabled: Bool // = false
}

struct ContentView: View {
    @ObservedObject var managedEntity: ManagedEntity
    var body: some View {
        VStack {
            Toggle("ManagedEntity enabled", isOn: $managedEntity.enabled)
            TextField("ManagedEntity name", text: $managedEntity.name)
                .disabled(!managedEntity.enabled)
        }
    }
}



override public func willChangeValue(forKey key: String) {
        super.willChangeValue(forKey: key)
        self.objectWillChange.send()
    }
    
 ... :View {   
    
.onReceive(sublistRo.objectWillChange){ _ in
    DispatchQeue.main.asyncAfter(deadline: .now()){
           self.listCD.objectWillChange.send()
    }
}

```
