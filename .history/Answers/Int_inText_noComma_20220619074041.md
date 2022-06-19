```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: How to display an int without commas? (by Thomas)

A: By default `Text` shows provided string taking into account L10N and I18N settings. 
So providing string `"\(1944)"` can be shown as "1,944". There is explicit `Text(verbatim:)` 
constructor to render string "as-is", so a solution for this case is

	Text(verbatim: "\($0.property) \($0.year) \($0.etc)")

