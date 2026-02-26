import UIKit

class Person
{
    var name: String
    var age: Int
    
    init?(name: String, age: Int)
    {
        guard !name.isEmpty, age >0 else
        {
            return nil
        }
        
        self.name = name
        self.age = age
        print(#function)
    }
    
    convenience init?()
    {
        self.init(name: "Anonymous", age: 0)
        print(#function)
    }
    
    convenience init?(name: String)
    {
        self.init(name: name, age: 0)
        print(#function)
    }
    
    
    func display()
    {
        print("Name: \(name), Age: \(age)")
    }
}

var p1: Person? = Person()
p1?.display()

var p2: Person? = Person(name: "John")
p2?.display()

var p3: Person? = Person(name: "John", age: 30)
p3?.display()
