// simplest form of classes

class Human {
    var age=18
    func printAge() {
        print("you are \(age) years old")
    }
}
var human:Human=Human()
human.printAge()

// creating an initializer (constructor on another languages)

class Human{
    let name:String
    var age:Int
    init(name:String, age:Int) {
        self.name=name
        self.age=age
    }
    func printInfo(){
        print("hello \(name)")
        print("you are too old! you are \(age) years old")
    }
}
var human:Human=Human(name:"Ali",age:22)
human.printInfo()

// inheritence

// superclass:
//don't forget to imort foundation to use the pi
// import Foundation

class NamedShape {
    var numberOfSides: Int = 0
    var name: String


    init(name: String) {
       self.name = name
    }


    func simpleDescription() {
       print("simple description that will never get called")
    }
        
    func superClassCall() {
        print("Hello From The Super Class")
    }
}
//subclass:
class Circle : NamedShape {
    var radius : Int
    init(radius:Int, name: String) {
        self.radius=radius
        super.init(name:name)
    }
    func area() -> Double {
      return Double.pi * pow(Double(radius), 2)
    }
    override func simpleDescription() {
        print("\(name) radius is: \(radius) and it's area is \(area())")
    }
}
let circle:Circle = Circle(radius:8,name:"our lovely circle ")
circle.simpleDescription() //our lovely circle  radius is: 8 and it's area is 201.06192982974676
circle.superClassCall() //Hello From The Super Class

//still need to talk about: setters, getters, will set, did set