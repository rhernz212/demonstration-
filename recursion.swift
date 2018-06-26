import UIKit

// Solve for factorials using recursion

func recursiveFactorial(value: UInt) -> UInt { // using UInt because we can't have negative factoriala
    if value == 0 {
        return 1 // returns 1 because 0 factorial is equal to 1
    }
    return value * recursiveFactorial(value: value - 1) // multiplies the value by the value minus one (N) * (N - 1)
}

recursiveFactorial(value: 5) // exceeds UInt limit if 21! or greater is passed

// Fib Numbers using recursion

func fibNumWithRecursion(numSteps: Int, first: Int, second: Int) -> [Int] { // function that returns fib numbers and takes number of steps, first, and second values
    if numSteps == 0 {
        return []
    }
    return [first + second] + fibNumWithRecursion(numSteps: numSteps - 1, first: second, second: first + second) // concatenates two arrays
}

[0, 1] + fibNumWithRecursion(numSteps: 13, first: 0, second: 1)
