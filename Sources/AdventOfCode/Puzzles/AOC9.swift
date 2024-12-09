//  AOC9.swift
//  AdventOfCode
//
//  Created by Dash on 12/8/22.
//

import Foundation
import Algorithms

struct AOC9: Puzzle {
    typealias Answer = Int
    
    private struct Item: Equatable {
        enum Kind: Equatable {
            case file(id: Int)
            case freeSpace
        }
        
        let kind: Kind
        var size: Int
        
        var isSpace: Bool {
            switch kind {
            case .freeSpace: true
            case .file: false
            }
        }
    }
    
    private func parse(_ input: String) -> [Item] {
        input.enumerated().compactMap { characterIndex, character -> Item? in
            guard let size = Int(String(character)) else { return nil }
            return .init(kind: characterIndex % 2 == 0 ? .file(id: characterIndex / 2) : .freeSpace, size: size)
        }
    }
    
    private func checksum(of items: [Item]) -> Int {
        var checksum = 0
        var index = 0
        for item in items {
            if case let .file(id) = item.kind {
                for _ in 0..<item.size {
                    checksum += index * id
                    index += 1
                }
            } else {
                index += item.size
            }
        }
        return checksum
    }
    
    func solve1(input: String) -> Int {
        var items = parse(input)
        
        while let spaceIndex = items.firstIndex(where: { $0.isSpace }) {
            let space = items[spaceIndex]
            let lastIndex = items.lastIndex(where: { !$0.isSpace })!
            let last = items[lastIndex]
            if case let .file(id) = last.kind {
                let minSize = min(space.size, last.size)
                items[lastIndex].size -= minSize
                if items[lastIndex].size == 0 {
                    items.remove(at: lastIndex)
                }
                items[spaceIndex].size -= minSize
                if items[spaceIndex].size == 0 {
                    items.remove(at: spaceIndex)
                }
                items.insert(.init(kind: .file(id: id), size: minSize), at: spaceIndex)
            }
            while items.last!.isSpace {
                items.removeLast()
            }
        }
        
        return checksum(of: items)
    }
    
    func solve2(input: String) -> Int {
        var items = parse(input)
        
        for id in (0...(input.count / 2)).reversed() {
            guard let itemIndex = items.lastIndex(where: { $0.kind == .file(id: id) }) else { continue }
            let item = items[itemIndex]
            if let insertIndex = items.firstIndex(where: { $0.size >= item.size && $0.isSpace }), insertIndex < itemIndex {
                items[itemIndex] = .init(kind: .freeSpace, size: item.size)
                items[insertIndex].size -= item.size
                if items[insertIndex].size == 0 {
                    items.remove(at: insertIndex)
                }
                items.insert(item, at: insertIndex)
            }
        }
        
        return checksum(of: items)
    }
}
