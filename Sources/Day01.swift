//
//  Day01.swift
//  AdventOfCode
//
//  Created by Camden Webster on 12/2/24.
//

import Algorithms

struct Day01: AdventDay {
  
  // Save your data in a corresponding text file in the `Data` directory.
  var data: String

  // Splits input data into its component parts and convert from string.
  var entities: [[Int]] {
    data.split(separator: "\n").map {
      line in line.split(separator: " ").compactMap { Int($0) }
    }
  }
  
  func part1() -> Any {
    // Put each item in nested arrays into the necessary columns
    var column1: [Int] = []
    var column2: [Int] = []
    
    for row in entities {
      if row.count == 2 {
        column1.append(row[0])
        column2.append(row[1])
      }
    }
    
    let sortedColumn1 = column1.sorted()
    let sortedColumn2 = column2.sorted()
    
    guard sortedColumn1.count == sortedColumn2.count else {
      fatalError("Always must have the same length of data!")
    }
    let distances = zip(sortedColumn1, sortedColumn2).map { abs($0 - $1) }
    
    return distances.reduce(0, +)
  }

  // Replace this with your solution for the second part of the day's challenge.
  func part2() -> Any {
    // Put each item in nested arrays into the necessary columns
    var column1: [Int] = []
    var column2: [Int] = []
    var score: [Int] = []

    for row in entities {
      if row.count == 2 {
        column1.append(row[0])
        column2.append(row[1])
      }
    }
    
    // Loop through column 1 and see how many times each value occurs in column 2
    for i in column1 {
      let occurences = column2.filter { $0 == i }.count
      let currentScore = i * occurences
      score.append(currentScore)
    }
    return score.reduce(0, +)
  }
}
