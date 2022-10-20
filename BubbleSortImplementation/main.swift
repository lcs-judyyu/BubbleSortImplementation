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

// populate the list
for _ in 1...10 {
    dataSet.append(Int.random(in: 1...100))
}

// print the list
print("Unsorted:")
print(dataSet)
waitForUserInput()

// lop thought the entire array "n" times, n = number of elements in the array
for i in 0..<dataSet.count {
   
    // one pass through the array to float the highest number to the end
    for j in 0..<dataSet.count - 1 {

        // compare lest value to right value
        print("Comparison \(j + 1)...", terminator: "")
        if dataSet[j] > dataSet[j + 1] {
            
            // swap values when left is greater than right
            let temporaryValue = dataSet[j] // set aside the lest value
            dataSet[j] = dataSet[j + 1]     // replace left with right
            dataSet[j + 1] = temporaryValue // replace right with temporary value
            print("values were swapped", terminator: "")
            
        }
        print("")
        
    }
    
    // print the array after the pass
    print("Array after pass \(i + 1):")
    print(dataSet)
    waitForUserInput()
    
}
