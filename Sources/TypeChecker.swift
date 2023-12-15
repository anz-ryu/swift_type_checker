
import Foundation


class TypeChecker: CustomStringConvertible {
  let object: Any?
  init(_ object: Any?) {
    self.object = object
  }

  lazy var description: String = {
    return self.generate(self.object)
  }()

  func generate(_ object: Any?) -> String {
    if let object = object {
      if let object = object as? NSDictionary {
        var rt = "{"
        for key in object.allKeys {
          rt += "\(key):\(generate(object[key])), "
        }
        rt += "}"
        return rt
      } else if let object = object as? NSArray {
        var rt = "["
        for i in 0..<object.count {
          rt += "\(generate(object[i])), "
        }
        rt += "]"
        return rt
      }
      return String(describing: object)
    } else {
      return "nil"
    }
  }
}
