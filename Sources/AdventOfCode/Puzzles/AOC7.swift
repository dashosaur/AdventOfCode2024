//  AOC7.swift
//  AdventOfCode
//
//  Created by Dash on 12/6/22.
//

import Foundation
import Algorithms

struct AOC7: Puzzle {
    typealias Answer = Int
    
    func solve1(input: String) -> Int {
        input.lines.reduceSum { line in
            let (testValueText, numsText) = line.splitInTwo(": ")
            let total = Int(testValueText)!
            let nums = numsText.integers
            return canReachTestValue(total, nums: nums, operators: [(+), (*)]) ? total : 0
        }
    }
    
    func solve2(input: String) -> Int {
        input.lines.reduceSum { line in
            let (testValueText, numsText) = line.splitInTwo(": ")
            let total = Int(testValueText)!
            let nums = numsText.integers
            return canReachTestValue(total, nums: nums, operators: [(+), (*), (||)]) ? total : 0
        }
    }
    
    private func canReachTestValue(_ testValue: Int, nums: [Int], operators: [(Int, Int) -> Int]) -> Bool {
        guard nums.count > 1 else { return nums.first == testValue }
        
        var nums = nums
        let a = nums.removeFirst()
        let b = nums.removeFirst()
        return operators.contains { op in
            canReachTestValue(testValue, nums: [op(a, b)] + nums, operators: operators)
        }
    }
}

fileprivate extension Int {
    static func || (lhs: Int, rhs: Int) -> Int {
        Int(String(lhs) + String(rhs))!
    }
}
