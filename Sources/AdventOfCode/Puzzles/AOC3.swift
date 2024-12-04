//  AOC3.swift
//  AdventOfCode
//
//  Created by Dash on 12/2/22.
//

import Foundation

struct AOC3: Puzzle {
    typealias Answer = Int
    
    func solve1(input: String) -> Int {
        input
            .matches(of: #/mul\((?<a>\d+),(?<b>\d+)\)/#)
            .reduceSum { Int($0.a)! * Int($0.b)! }
    }
    
    func solve2(input: String) -> Int {
        input
            .replacing(#/don't\(\)(?s).*?do\(\)/#, with: "")
            .matches(of: #/mul\((?<a>\d+),(?<b>\d+)\)/#)
            .reduceSum { Int($0.a)! * Int($0.b)! }
    }
}
