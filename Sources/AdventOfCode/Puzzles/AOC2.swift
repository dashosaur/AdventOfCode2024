//  AOC2.swift
//  AdventOfCode
//
//  Created by Dash on 12/1/22.
//

import Foundation
import Algorithms

struct AOC2: Puzzle {
    typealias Answer = Int
    
    private func isReportSafe(levels: [Int]) -> Bool {
        let diffs = levels.adjacentPairs().map({ $0.0 - $0.1 })
        let isOrdered = diffs.allSatisfy({ $0 >= 0 }) || diffs.allSatisfy({ $0 <= 0 })
        let isGradual = diffs.allSatisfy({ (1...3).contains(abs($0)) })
        return isOrdered && isGradual
    }
    
    func solve1(input: String) -> Int {
        input.lines.count { line in
            isReportSafe(levels: line.integers)
        }
    }
    
    func solve2(input: String) -> Int {
        input.lines.count { line in
            let levels = line.integers
            for levelIndexToRemove in 0..<levels.count {
                var updatedLevels = levels
                updatedLevels.remove(at: levelIndexToRemove)
                if isReportSafe(levels: updatedLevels) {
                    return true
                }
            }
            return false
        }
    }
}
