# Beats

A Swift library for calculating [Swatch Internet Time](https://en.wikipedia.org/wiki/Swatch_Internet_Time)

Usage:

```swift
import beats

let now = beats().atNow()
let fromUnix = beats().atUnix(unixTime: 1560486779)
let fromDate = beats().atDate(date: Date())
```

Have fun.

---

&copy; 2019 John Barton - MIT License
