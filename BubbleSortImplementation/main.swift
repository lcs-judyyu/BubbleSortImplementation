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

// list size can be adjusted
var sizeNumber: Int = 20

// create an empty list (array)
var dataSet : [Int] = []

// populate the list
// random array
for _ in 1...sizeNumber {
    dataSet.append(Int.random(in: 1...100))
}

// worst case scenario: reversely sorted values
//for t in 1...sizeNumber {
//    dataSet.insert(t, at: 0)
//}

// best case scenario: already sorted values
//for s in 1...sizeNumber {
//    dataSet.append(s)
//}

// other senario: almost sorted values (biggest value is at the front)
//for r in 1...sizeNumber - 1 {
//    dataSet.append(r)
//}
//dataSet.insert(sizeNumber, at: 0)

// print the list
print("Unsorted:")
print(dataSet)
//waitForUserInput()

// duplicate an array for sorting
var sortingDataSet : [Int] = dataSet

// keep track of start time (epoch)
// start time = number of seconds since Jan. 1st, 1970
let startTime = Date().timeIntervalSince1970

// control the number of comparisons in each array
var m = 1

// loop through the array several times and get an average calculated sorting time
// upper bound is the number of rounds of sorting
for k in 1...10 {
    
    print("start sort \(k)")
    
    // loop thought the entire array "n" times until no swaps in current pass
    for i in 0..<sortingDataSet.count - 1 {
        
        // check if there are swaps in the current pass, starting with no swaps
        var swapped = false
       
        // one pass through the array to float the highest number to the end
        for j in 0..<sortingDataSet.count - m {
            
            // compare lest value to right value
            print("Comparison \(j + 1)...", terminator: "")
            
            if sortingDataSet[j] > sortingDataSet[j + 1] {
                
                // swap values when left is greater than right
                let temporaryValue = sortingDataSet[j] // set aside the left value
                sortingDataSet[j] = sortingDataSet[j + 1]     // replace left with right
                sortingDataSet[j + 1] = temporaryValue // replace right with temporary value
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
        print(sortingDataSet)
        print("Swapping occured in this pass: \(swapped)")
        //waitForUserInput()
        
        // when no swap occurred, stop the outer loop
        if swapped == false {
            // end the program
            break
        }
        
    }
    
    // get end time (seconds since epoch)
    print("ended sort \(k)")
    let endTime = Date().timeIntervalSince1970

    // get time taken for array to sort
    let elapsedTime = endTime - startTime
    
    // calculate the average sorting time
    let averageElapsedTime = elapsedTime / Double(k)
    print("Sorts took \(averageElapsedTime) seconds on average after \(k) times")
    print("")
    
    // change the m back to 1
    m = 1
    
    // change the sorted set back to the original set for another sorting
    sortingDataSet = dataSet
}
