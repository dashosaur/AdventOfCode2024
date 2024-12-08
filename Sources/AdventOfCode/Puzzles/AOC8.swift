//  AOC8.swift
//  AdventOfCode
//
//  Created by Dash on 12/7/22.
//

import Foundation
import Algorithms

struct AOC8: Puzzle {
    typealias Answer = Int
    
    private func antennasByFrequency(_ grid: [[Character]]) -> [Character: Set<Point>] {
        var antennasByFrequency: [Character: Set<Point>] = [:]
        
        for point in grid.points {
            guard let frequency = grid[point], frequency != "." else { continue }
            antennasByFrequency[frequency, default: []].insert(point)
        }
        
        return antennasByFrequency
    }
    
    func solve1(input: String) -> Int {
        let grid = input.characterGrid
        let antennasByFrequency = antennasByFrequency(grid)
        var antinodes = Set<Point>()
        
        for (_, antennas) in antennasByFrequency {
            for (antenna1, antenna2) in product(antennas, antennas) {
                guard antenna1 != antenna2 else { continue }
                let distance = antenna2 - antenna1
                
                if grid[antenna1 - distance] != nil {
                    antinodes.insert(antenna1 - distance)
                }
                
                if grid[antenna2 + distance] != nil {
                    antinodes.insert(antenna2 + distance)
                }
            }
        }
        
        return antinodes.count
    }
    
    func solve2(input: String) -> Int {
        let grid = input.characterGrid
        let antennasByFrequency = antennasByFrequency(grid)
        var antinodes = Set<Point>()
        
        for (_, antennas) in antennasByFrequency {
            for (antenna1, antenna2) in product(antennas, antennas) {
                guard antenna1 != antenna2 else { continue }
                let distance = antenna2 - antenna1
                
                var antenna = antenna1
                while grid[antenna] != nil {
                    antinodes.insert(antenna)
                    antenna -= distance
                }
                
                antenna = antenna2
                while grid[antenna] != nil {
                    antinodes.insert(antenna)
                    antenna += distance
                }
            }
        }
        
        return antinodes.count
    }
}
