//
//  main.swift
//  BubbleSortImplementation
//
//  Created by Judy YU on 2022-10-20.
//

import Foundation

func waitForUserInput() {
    print("")
    print("Press Return to continue...")
    // wait for input from the user then discards it
    _ = readLine()
}

// create an empty list (array)
var dataSet : [Int] = []

// populate the list: random array
//for _ in 1...10 {
//    dataSet.append(Int.random(in: 1...100))
//}

// worst case scenario: reversely sorted values
dataSet.append(44)
dataSet.append(34)
dataSet.append(32)
dataSet.append(31)
dataSet.append(19)
dataSet.append(15)
dataSet.append(14)
dataSet.append(6)
dataSet.append(5)
dataSet.append(2)

// print the list
print("Unsorted:")
print(dataSet)
//waitForUserInput()

// keep track of start time (epoch)
// start time = number of seconds since Jan. 1st, 1970
let startTime = Date().timeIntervalSince1970

var m = 1
// loop thought the entire array "n" times until no swaps in current pass
for i in 0..<dataSet.count - 1 {
    
    // check if there are swaps in the current pass, starting with no swaps
    var swapped = false
   
    // one pass through the array to float the highest number to the end
    for j in 0..<dataSet.count - m {
        
        // compare lest value to right value
        print("Comparison \(j + 1)...", terminator: "")
        
        if dataSet[j] > dataSet[j + 1] {
            
            // swap values when left is greater than right
            let temporaryValue = dataSet[j] // set aside the left value
            dataSet[j] = dataSet[j + 1]     // replace left with right
            dataSet[j + 1] = temporaryValue // replace right with temporary value
            // a swap occurred
            print("values were swapped...", terminator: "")
            // there are swaps occured in the pass
            swapped = true
            
        }
        print("")
        
    }
    
    // reduce one comparison after each pass
    m += 1
    
    // print the array after the pass
    print("Array after pass \(i + 1):")
    print(dataSet)
    print("Swapping occured in this pass: \(swapped)")
    //waitForUserInput()
    
    // when no swap occurred, stop the outer loop
    if swapped == false {
        // end the program
        break
    }
    
}

// get end time (seconds since epoch)
print("ended")
let endTime = Date().timeIntervalSince1970

// get time taken for array to sort
let elaspsedTime = endTime - startTime
print("Sort took \(elaspsedTime) seconds")
