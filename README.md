# Beats

A Swift library for calculating [Swatch Internet Time](https://en.wikipedia.org/wiki/Swatch_Internet_Time)

Usage:

```swift
import beats

let beats = beats(date: Date())
// or let beats = beats()
let asNumber = beats.int() // 32
let asString = beats.string() // @032
```

Have fun.

---

&copy; 2019 John Barton - MIT License
