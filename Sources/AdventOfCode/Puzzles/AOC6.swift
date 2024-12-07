//  AOC6.swift
//  AdventOfCode
//
//  Created by Dash on 12/5/22.
//

import Foundation
import Algorithms

struct AOC6: Puzzle {
    typealias Answer = Int
    
    private func visitedPoints(_ grid: [[Character]]) -> Set<Point> {
        let startPosition = grid.points.first(where: { grid[$0]?.direction != nil })!
        let startDirection = grid[startPosition]!.direction!
        var state = State(position: startPosition, direction: startDirection)
        
        var visited: Set<Point> = []
        
        while grid[state.position] != nil {
            visited.insert(state.position)
            
            if grid[state.position + state.direction] == "#" {
                state = .init(position: state.position, direction: state.direction.turnRight())
            } else {
                state = .init(position: state.position + state.direction, direction: state.direction)
            }
        }
        
        return visited
    }
    
    private func hasCycle(_ grid: [[Character]], initialState: State) -> Bool {
        var state = initialState
        var visited: Set<State> = []
        
        while grid[state.position] != nil {
            if visited.contains(state) {
                return true
            }
            visited.insert(state)
            
            if grid[state.position + state.direction] == "#" {
                state = .init(position: state.position, direction: state.direction.turnRight())
            } else {
                state = .init(position: state.position + state.direction, direction: state.direction)
            }
        }
        return false
    }
    
    func solve1(input: String) -> Int {
        visitedPoints(input.characterGrid).count
    }
    
    func solve2(input: String) -> Int {
        let grid = input.characterGrid
        let startPosition = grid.points.first(where: { grid[$0]?.direction != nil })!
        let startDirection = grid[startPosition]!.direction!
        
        return visitedPoints(grid).count { point in
            if grid[point] != "." { return false }
            
            var grid = grid
            grid[point.y][point.x] = Character("#")
            return hasCycle(grid, initialState: .init(position: startPosition, direction: startDirection))
        }
    }
}

fileprivate struct State: Hashable {
    let position: Point
    let direction: Point
}

fileprivate extension Character {
    var direction: Point? {
        switch self {
        case "^": return .init(0, -1)
        case ">": return .init(1, 0)
        case "v": return .init(0, 1)
        case "<": return .init(-1, 0)
        default: return nil
        }
    }
}
