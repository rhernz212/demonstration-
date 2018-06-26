import UIKit

// Binary Search

// create an ordered array to be used in the search

var numbers = [Int]()

for num in 1...500 {
    numbers.append(num)
}

// Create a function that will take a value to look for and an array

func binarySearchForValue(value: Int, array: [Int]) -> Bool {
    var leftIndex = 0
    var rightIndex = array.count - 1
    
    while leftIndex <= rightIndex {
        let middleIndex = (leftIndex + rightIndex) / 2
        let middleValue = array[middleIndex]
        
        if value == middleValue { // returns true if search value and middle value match
            return true
        }
        
        if value < middleValue { // looks to the left of the array for the search value
            rightIndex = middleIndex - 1
        }
        
        if value > middleValue { // looks to the right of the array for the search value
            leftIndex = middleIndex + 1
        }
    }
    return false // returns false if unable to find number in array
}

binarySearchForValue(value: 375, array: numbers)

// Less efficient way of finding the value

func linearSearchForValue(value: Int, array: [Int]) -> Bool {
    for num in array {
        if num == value { // checks every number in the array until it finds a number that matches the value
            return true
        }
    }
    return false // returns false after being unable to find the search value
}

linearSearchForValue(value: 375, array: numbers)
