// 1. print statement 
print("hello")

//2. initializing variables

//2.1 using let for immutable and var for mutable

//2.1.1 the var
var variable=53
variable=3 // works 

//2.1.2
let variable = 55
variable=3 // compiler error

// 2.2 declaring the variable type

let variable : Double = 55.0

let text : String = "I have \(variable) dollars" // this is how to add variables in the string

// arays

var fruits = ['Orange','Bananna','grapes']

fruits[1]='strawberries' // fruits now are : [orange, strawberries, grapes]

fruits=[] // fruits now are []

// expliciting the type of the array

var fruits : [String]=[]


// Dictinoaries - maps on another languages

let emptyDictionary: [String: Float] = [:]

let fruitsDictionary : [Int : String]= [
    1:"Orange",
    2:"Bannana",
    3:"grapes"
]

// if condition:

if(1>5){
    print('this will not be printed')
}else{
    print("the printed one")
}

// if condition as a value setter

let x = if(1>5){
    100
}else{
    200
}

// switch case:

let vegetable = "red pepper"

switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.") // if all other cases fails
} //Prints "Is it a spicy red pepper?"

// for loops:
let individualScores = [75, 43, 103, 87, 12]
for score in individualScores{
    print(score)
}
// for loops on dictionaries:

let fruitsDictionary : [Int : String]= [
    1:"Orange",
    2:"Bannana",
    3:"grapes"
]

for (_,fruit) in fruitsDictionary{ // using '_' is like saying that there will be something here, ignore it (the Integer in our case)
    print(fruit)
}

// for loops with ... notation
for i in 0...5 {
    print(i) 
}// 0,1,2,3,4,5

for i in 0..<5 {
    print(i) 
}// 0,1,2,3,4,



// while loops:
var n =0

while n<10{
    n++
    print(n)
}

// optional values - nullable ones:

var optionalString : String? 

print (optionalString) // prints: nill

optionalString="Hello there"

print(optionalString) // prints: Hello there

