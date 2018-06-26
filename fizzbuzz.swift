import UIKit

// FizzBuzz

// create an empty array that can have numbers passed to it
var arrayOfNumbers = [Int]()

// loop to pass numbers to arrayOfNumbers

for num in 1...100 {
    arrayOfNumbers.append(num)
}

// create the loop for the fizzbuzz logic

for num in arrayOfNumbers {
    if num % 15 == 0 { // checked first to avoid printing only fizz or buzz when num % 3 == 0 or num % 5 == 0 condition met
        print("FizzBuzz")
    } else if num % 3 == 0 {
        print("Fizz")
    } else if num % 5 == 0 {
        print("Buzz")
    } else {
        print(num)
    }
}


