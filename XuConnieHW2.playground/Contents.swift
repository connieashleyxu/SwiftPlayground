import Foundation
/// Connie Xu

/// ITP-342 Spring 2020 Homework 2
/// Strings, Functions, and Optionals

// ************
// Follow the instructions in the comments to complete the coding problems. You can simply write your code in the Swift Playground we've provided. Rename the file in the format LastFirstHW2.playground, then zip the file in the format LastFirstHW2.zip and submit on Blackboard.
// ************

/// 1.
/// Format the below into a Swift String, taking care to keep the exact formatting, including quotation marks and tabs! You can ignore the slashes for the comment, though.
/// Hint: use the escape character for tab, new-line, and quotation marks.
//    "Hello, this is a
// multiline-quote."

// Uncomment below to finish the line of code and print!
let multiLineQuote = """
         "Hello, this is a
      multiline-quote."
    """

  print(multiLineQuote)

/// 2.
/// Mutate the below string to read "Hello!" instead of "Hello."
/// Hint: don't re-assign the value of the String directly, but use the insert and remove methods to mutate in place.
var message = "Hello."

// Your String mutation code here
message.remove(at: message.index(before: message.endIndex))
message.insert("!", at: message.endIndex)

print(message)

/// 3.
/// Use the priceWithSalesTax variable to format the price tag string like this: "Total price: $XXX.XX" (with just 2 decimal places)
let priceWithSalesTax = 124.99 * 1.095
// Uncomment me!

  let priceTag = String(format: "Total price: $%.2f", priceWithSalesTax)
  print(priceTag)


/// 4.
/// The below code combines names and dates of birth and prints them. There's a lot of repeated logic! Using your best judgement, refactor these operations into a function.
/// Hint: consider designing a function that takes in a name and date of birth as String parameters
var p1 = "Wanda Austin"
var d1 = "1/1/1954"
//var formatted1 = p1 + " " + d1
//print(formatted1)

var p2 = "Tommy Trojan"
var d2 = "2/24/1912"
//var formatted2 = p2 + " " + d2
//print(formatted2)


var p3 = "Traveler IX"
var d3 = "12/1/2017"
//var formatted3 = p3 + " " + d3
//print(formatted3)


// Your function and function calls to produce the same output as above here
func formatInfo (name: String, date: String) {
    print(name + " " + date)
}

formatInfo(name: p1, date: d1)
formatInfo(name: p2, date: d2)
formatInfo(name: p3, date: d3)


/// 5.
/// Write a function that returns the sum of two Ints and that can be called like this: let x = add(1, 2)
// Your function here
func add (_ num1: Int, _ num2: Int) -> Int {
    return num1 + num2
}

let x = add(1, 2)

/// 6.
/// Write a function that prints the sum of two Ints, does not return the sum, and can be called like this: printSum(a: 1, b: 2)
// Your function here
func printSum (a: Int, b: Int) {
    print(a + b)
}

printSum(a: 1, b: 2)

/// 7.
/// Write a function that returns a formatted String including age someone is turning this year given the year they were born.
/// The function should be able to be called as follows. It should also use the parameter name "year" and arguement label provided ("bornIn").
/// Example function call:
/// hello("John", bornIn: 1995) // Returns: "John is turning 24 in 2019"
// Your function here

func hello (_ name: String, bornIn: Int) {
    let year: Int = 2019;
    print("\(name) turned \(year - bornIn) in 2019")
}

hello("John", bornIn: 1995)

/// 8.
/// Write a function that takes in a Float score representing a grade percentage and returns a String describing the grade. Handle bad input appropriately.
/// Example:
/// grade(95) returns "A"
/// grade(70.2) returns "C-"
/// grade(-50) returns "Invalid entry"
// Your function here
func grade (_ grade: Float) -> String {
    if (grade >= 0 && grade <= 64) {
        return("F")
    }
    else if (grade >= 65 && grade <= 66) {
        return ("D")
    }
    else if (grade >= 67 && grade <= 69) {
        return ("D+")
    }
    else if (grade >= 70 && grade <= 72) {
        return ("C-")
    }
    else if (grade >= 73 && grade <= 76) {
        return ("C")
    }
    else if (grade >= 77 && grade <= 79) {
        return ("C+")
    }
    else if (grade >= 80 && grade <= 82) {
        return ("B-")
    }
    else if (grade >= 83 && grade <= 86) {
        return ("B")
    }
    else if (grade >= 87 && grade <= 89) {
        return ("B+")
    }
    else if (grade >= 90 && grade <= 92) {
        return ("A-")
    }
    else if (grade >= 93 && grade <= 100) {
        return ("A")
    }
    else {
        return ("Invalid input")
    }
}

grade(95)
grade(70.2)
grade(-50)

/// 9.
/// Write a function below that allow both of the function calls below compile without any changes. The function doesn't have to actually do anything.
/// Hint: Take a look at the function slides 12-17 for default argument values.
// Write your function here
func foo (_ param1: Int, _ param2:Int = 2) {
    //func code here
    //print("test \(param1) & \(param2)")
}

// Uncomment me to make sure your function works!
foo(1, 2)
foo(1)


/// 10.
/// Write a function that takes in a String called word and a Character called letter, and returns an integer reprsenting the number of times letter appears in word. Then, call the function with some sample input and print it. Add a comment next to your sample input noting what the expected output is.
/// Hint: Use a for loop to iterate over word.indices
// Your code here
func numOfChar (_ word: String,_ letter: Character) -> Int {
    var count: Int = 0;
    
    for index in word.indices {
        if (word[index] == letter) {
            count += 1
        }
    }
    
    return count
}

numOfChar("Connie", "n") //Expected output: 2

/// 11.
/// Write a function using the inout keyword that takes in an Int and increments it by 1. Call your function to show it works.
// Your code here
var origNum = 12

func addOne (number: inout Int) {
    number += 1
}

addOne(number: &origNum) //adds 1 to origNum

/// 12.
/// Safely unwrap the optional variable below, taking care to avoid crashing. If the optional has a value, print it. If it doesn't, print "No value". You can use any method you like to unwrap the optional.
var maybeHasAValue: String? //= "Test"

// Your code here
if let exists = maybeHasAValue {
    print(exists)
}
else {
    print("No value")
}
