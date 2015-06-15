// Intro to Swift in class playground

import Foundation

// TODO: Create two variables, name and age. Name is a string, age is an integer. DONE

// TODO: Print "Hello {whatever the value of name is}, you are {whatever the value of age is} years old!" DONE


// TODO: Print “You can drink” below the above text if the user is above 21. If they are above 18, print “you can vote”. If they are above 16, print “You can drive” DONE

// TODO: Print “you can drive” if the user is above 16 but below 18. It should print “You can drive and vote” if the user is above 18 but below 21. If the user is above 21, it should print “you can drive, vote and drink (but not at the same time!”. DONE

// TODO: Print the first fifty multiples of seven minus one (e.g. the first three multiples are 7, 14, 21. The first three multiples minus one are 6, 13, 20)

// TODO: Create a constant called number DONE


// TODO: Print whether the above number is even DONE

// TODO: Print out "Hello {whatever the value of name is}, your name is {however long the string name is} characters long!. Use count() DONE

// TODO: Print the sum of one hundred random numbers. Use rand() to generate random numbers.

// Bonus TO DO: Write a program that prints the numbers from 1 to 100. But for multiples of three print “Fizz” instead of the number and for the multiples of five print “Buzz”. For numbers which are multiples of both three and five print “FizzBuzz”.

// BONUS TODO: The first fibonacci number is 0, the second is 1, the third is 1, the fourth is two, the fifth is 3, the sixth is 5, etc. The Xth fibonacci number is the sum of the X-1th fibonacci number and the X-2th fibonacci number. Print the 37th fibonacci number below

// 1, 1, 2, 3, 5, 8, 13, 21, 34


var name: String = "Handy"
var age: Int = 28


println("Hello \(name), you are \(age) years old!")


if age > 21 {
    println("you can drink")
} else if age > 18 {
    println("you can vote")
} else if age > 16 {
    println("you can drive")
}


var myage: Int = 28

if myage > 16 && myage < 18 {
    println("You can drive")
} else if myage > 18 && myage < 21 {
    println("You can drive and vote")
} else if myage > 21 {
    println("You can drive, vote and drink")
}


let number: Int = 5


println("\(number) is not an even number")


println("Hello \(name), your name is \(count(name)) characters long!")






