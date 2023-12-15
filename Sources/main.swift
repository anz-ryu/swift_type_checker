// The Swift Programming Language
// https://docs.swift.org/swift-book
import Foundation

let a: NSArray? = [1,2,3]
let t = TypeChecker(["a": 1, "b": 2, "c": 3, "d": 4, "e": 5, "f": a as Any])
print("\(t)")
print("\(t)")
print("\(t)")
print("Hello, world!")
