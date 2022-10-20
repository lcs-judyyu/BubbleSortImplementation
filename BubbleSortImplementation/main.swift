//
//  main.swift
//  BubbleSortImplementation
//
//  Created by Judy YU on 2022-10-20.
//

import Foundation

// creaet an empty list (array)
var dataSet : [Int] = []

// populate the list
dataSet.append(Int.random(in: 1...100))
dataSet.append(Int.random(in: 1...100))
dataSet.append(Int.random(in: 1...100))

// print the list
print(dump(dataSet))
