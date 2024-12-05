//  AOC5.swift
//  AdventOfCode
//
//  Created by Dash on 12/4/22.
//

import Foundation

struct AOC5: Puzzle {
    typealias Answer = Int
    
    private func parseInput(_ input: String) -> (rules: [(Int, Int)], updates: [[Int]]) {
        let rules = input.lineGroups[0].lines.map { $0.splitInTwoInts("|") }
        let updates = input.lineGroups[1].lines.map(\.integers)
        return (rules, updates)
    }
    
    private func isValidOrdering(_ pages: [Int], rules: [(Int, Int)]) -> Bool {
        let pageSet = Set(pages)
        
        let filteredRules = rules.filter { (a, b) in
            pageSet.contains(a) && pageSet.contains(b)
        }
        
        return filteredRules.allSatisfy { (a, b) in
            pages.firstIndex(of: a)! < pages.firstIndex(of: b)!
        }
    }
    
    func solve1(input: String) -> Int {
        let (rules, updates) = parseInput(input)
        
        return updates.reduceSum { update in
            isValidOrdering(update, rules: rules) ? update.middle : 0
        }
    }
    
    func solve2(input: String) -> Int {
        let (rules, updates) = parseInput(input)
        
        func correctUpdate(_ pages: [Int]) -> [Int] {
            var correctedUpdate = [Int]()
            
            for page in pages {
                let insertIndex = correctedUpdate.indices.first { index in
                    var test = correctedUpdate
                    test.insert(page, at: index)
                    return isValidOrdering(test, rules: rules)
                }
                correctedUpdate.insert(page, at: insertIndex ?? correctedUpdate.endIndex)
            }
            
            return correctedUpdate
        }
        
        return updates.reduceSum { update in
            isValidOrdering(update, rules: rules) ? 0 : correctUpdate(update).middle
        }
    }
}
