import UIKit

//let arrayOfNumbers = [1,4,5,2,5,6,3,5,7,2,12,4,5,4]
//var sum = 0
//
//for number in arrayOfNumbers {
//    sum += number
//}
//
//print(sum)


//for number in 1...10 where number % 2 == 0 {
//    print(number)
//}

var bottles = 100

for number in 0...100 {
    if (number > 1) {
        bottles -= 1
        print("\n\(bottles) bottles of beer on the wall, \(bottles) bottles of beer. \nTake one down and pass it around, \(bottles - 1) bottles of beer on the wall.\n")
    }
    if (number == 1) {
        print("\n\(bottles) bottle of beer on the wall, \(bottles) bottle of beer. \nTake one down and pass it around, no more bottles of beer on the wall. \nNo more bottles of beer on the wall, no moere bottles of beer.\n Go to the store and buy some more, 99 bottles of beer on the wall.\n")
    }
}
