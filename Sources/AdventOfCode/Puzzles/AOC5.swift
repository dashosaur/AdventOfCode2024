//  AOC5.swift
//  AdventOfCode
//
//  Created by Dash on 12/4/22.
//

import Foundation

struct AOC5: Puzzle {
    typealias Answer = Int
    
    private func parseInput(_ input: String) -> (rules: [(a: Int, b: Int)], updates: [[Int]]) {
        let rules = input.lineGroups[0].lines.map { $0.splitInTwoInts("|") }
        let updates = input.lineGroups[1].lines.map(\.integers)
        return (rules, updates)
    }
    
    private func isValidOrdering(_ pages: [Int], rules: [(a: Int, b: Int)]) -> Bool {
        let pageSet = Set(pages)
        return rules
            .filter { pageSet.contains($0.a) && pageSet.contains($0.b) }
            .allSatisfy { pages.firstIndex(of: $0.a)! < pages.firstIndex(of: $0.b)! }
    }
    
    func solve1(input: String) -> Int {
        let (rules, updates) = parseInput(input)
        
        return updates.reduceSum { update in
            isValidOrdering(update, rules: rules) ? update.middle : 0
        }
    }
    
    func solve2(input: String) -> Int {
        let (rules, updates) = parseInput(input)
        
        return updates.reduceSum { update in
            guard !isValidOrdering(update, rules: rules) else { return 0 }
            
            let correctedUpdate = update.sorted { a, b in
                !rules.contains(where: { $0.0 == b && $0.1 == a })
            }
            
            return correctedUpdate.middle
        }
    }
}
