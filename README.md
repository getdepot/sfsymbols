# SFSymbolicator

<p align="center">
    <img src="https://img.shields.io/badge/Swift-5.3-orange.svg" />
    <a href="https://swift.org/package-manager">
        <img src="https://img.shields.io/badge/spm-compatible-brightgreen.svg?style=flat" alt="Swift Package Manager" />
    </a>
</p>


Package that helps developers building Swift UI and other apps find and use the right icons in their applications.

Some super simple examples:


```
print("===== Symbols")
for symbol in symbols.sorted() {
    print("\"\(symbol)\",")
}

print("===== fill")
let fill = SFSymbolicator().Symbols(withStyle: .Fill)
print(fill)

print("===== cirlce")
let shape = SFSymbolicator().Symbols(withShape: .Circle)
print(shape)

print("===== fill / rectangle")
let fillshape = SFSymbolicator().Symbols(withStyle: .Fill, withShape: .Rectangle)
print (fillshape)

print("===== multiple components")
let multiple = SFSymbolicator().Symbols(containing: [.lock, .rectangle, .stack])
print (multiple)
```

