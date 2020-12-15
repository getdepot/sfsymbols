//
//  main.swift
//  
//
//  Created by Eric Anderson on 12/14/20.
//

import Foundation
import SFSymbolicator

print(SFSymbolicator.Category.Arrows.Symbols().count)

var allbits = [String: Int]()
var symbols: Set<String> = []

for category in SFSymbolicator().Categories() {
    for symbol in category.Symbols() {
        symbols.insert(symbol)
        
        let bits = symbol.components(separatedBy: ".")
        for bit in bits {
            if allbits[bit] == nil {
                allbits[bit] = 1
            } else {
                allbits[bit]! += 1
            }
        }
    }
}

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

