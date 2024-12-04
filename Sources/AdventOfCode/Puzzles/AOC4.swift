//  AOC4.swift
//  AdventOfCode
//
//  Created by Dash on 12/3/22.
//

import Foundation

struct AOC4: Puzzle {
    typealias Answer = Int
    
    func solve1(input: String) -> Int {
        let grid = input.characterGrid
        
        var total = 0
        for point in grid.points {
            guard grid[point] == "X" else { continue }
            
            total += Point.allUnitVectors.count { direction in
                grid[point + direction] == "M" &&
                grid[point + 2 * direction] == "A" &&
                grid[point + 3 * direction] == "S"
            }
        }
        return total
    }
    
    func solve2(input: String) -> Int {
        let grid = input.characterGrid
        
        var total = 0
        for point in grid.points {
            guard grid[point] == "A" else { continue }
            
            let mDirections = Point.unitDiagnonalVectors.filter { grid[point + $0] == "M" }
            
            guard mDirections.count == 2 else { continue }
            
            if mDirections.allSatisfy({ grid[point - $0] == "S" }) {
                total += 1
            }
        }
        return total
    }
}
