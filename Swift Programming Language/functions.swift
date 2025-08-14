// functions:

// func function_name (parameter: parameter_type)->return_type{body}

func greet(person:String)->String{
    return "Hello \(person)"
}

let result = greet(person:"Ali")
print(result)
// returning more than one value:

func calculateStatistics(scores:[Int])->(min:Int,max:Int){
    var min=scores[0]
    var max = scores[0]
    for score in scores {
        if score > max {
            max = score
        }
        else if score < min {
            min = score
        }
    }
    return (min,max)
}
let numbers:[Int] = [1,2,3,4,5]

let result = calculateStatistics(scores:numbers)

print(result.1) // prints minimum
print(result.0) // prints maximum

// notes you may not need to use but it's good to know:
    // 1. functions is a first class type, meaning that function can return another function
    // 2. function can take another function as one of it's parameter
