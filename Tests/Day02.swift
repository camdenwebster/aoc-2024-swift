//
//  Day02.swift
//  AdventOfCode
//
//  Created by Camden Webster on 12/2/24.
//

//
//  Day01.swift
//  AdventOfCode
//
//  Created by Camden Webster on 12/2/24.
//

import Testing

@testable import AdventOfCode

// Make a copy of this file for every day to ensure the provided smoke tests
// pass.
struct Day02Tests {
  // Smoke test data provided in the challenge question
  let testData = """
    3   4
    4   3
    2   5
    1   3
    3   9
    3   3
    """

  @Test func testPart1() async throws {
    let challenge = Day02(data: testData)
    #expect(String(describing: challenge.part1()) == "11")
  }

  @Test func testPart2() async throws {
    let challenge = Day02(data: testData)
    #expect(String(describing: challenge.part2()) == "31")
  }
}
