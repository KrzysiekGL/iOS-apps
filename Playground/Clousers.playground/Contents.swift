//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
print(str)

func calaculator (n1: Int, n2: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(n1, n2)
}

//func add type (format) is : (Int, Int) -> Int
func add (no1 : Int, no2 : Int) -> Int {
    return no1 + no2
}



calaculator(n1: 2, n2: 17, operation: add)

let result = calaculator(n1: 2, n2: 17) {$0 * $1} //trailing closure (last parameter, which is operation (for func.), was omitted)

//$0 first parameter
//$1 second parameter
//$2 ... and so on

print(result)


//real life example

let array = [6,2,3,4,5,16] //want to add 1 to each number of the array



let newArray = array.map{$0 + 1}


