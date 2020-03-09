import UIKit

protocol Bird {
  var name: String { get }
  var canFly: Bool { get }
}

protocol Flyable {
  var airspeedVelocity: Double { get }
}

protocol methodProtocol{
    func helloprotocol(type:String)->String?
    func customprintProtocol()
}


class FlappyBird: Bird, Flyable,methodProtocol{
    
    func helloprotocol(type: String) -> String? {
        
        return "inside\(type)"
    }
    
    
    func customprintProtocol() {
        print("this is inside!!!")
    }
    
  
    
    let name: String = ""
    let flappyAmplitude: Double = 0.0
    let flappyFrequency: Double = 0.0
    let canFly = true

  var airspeedVelocity: Double {
    3 * flappyFrequency * flappyAmplitude
  }
 
    
    
}

let obj = FlappyBird()
print(obj.customprintProtocol())
print(obj.helloprotocol(type: "mamun how are you?") as Any)





//protocol Queue {
//   // associatedtype ItemType
//    var count: Int { get }
//    func push(_ element: Int)
//    func pop() -> Int
//}
//
//class Container: Queue {
//    private var items: [Int] = []
//
//    var count: Int {
//        return items.count
//    }
//
//    func push(_ element: Int) {
//        items.append(element)
//    }
//
//    func pop() -> Int {
//        return items.removeFirst()
//    }
//
//}



