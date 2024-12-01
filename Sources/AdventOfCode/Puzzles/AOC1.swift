//  AOC1.swift
//  AdventOfCode
//
//  Created by Dash on 11/30/22.
//

import Foundation

struct AOC1: Puzzle {
    typealias Answer = Int
    
    private func lists(input: String) -> (left: [Int], right: [Int]) {
        input.lines.reduce((left: [], right: [])) { lists, line in
            (lists.left + [line.integers[0]], lists.right + [line.integers[1]])
        }
    }
    
    func solve1(input: String) -> Int {
        let (left, right) = lists(input: input)
        
        return zip(left.sorted(), right.sorted()).reduceSum { l, r in
            abs(l - r)
        }
    }
    
    func solve2(input: String) -> Int {
        let (left, right) = lists(input: input)
        
        return left.reduceSum { l in
            right.count(where: { $0 == l }) * l
        }
    }
}
