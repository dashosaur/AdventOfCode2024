//
//  PuzzleTests.swift
//  AdventOfCodeTests
//
//  Created by Dash on 11/29/20.
//

import Testing

struct PuzzleTests {
    
    @Test
    func puzzleExample() {
        #expect(Example().solve1(input: "12,16") == 5)
        #expect(Example().solve2(input: "100756") == 50346)
    }
    
    @Test
    func puzzle1() {
        let puzzle = AOC1()
        
        let input1 = """
        3   4
        4   3
        2   5
        1   3
        3   9
        3   3
        """
        
        #expect(puzzle.solve1(input: input1) == 11)
        
        let input2 = input1
        
        #expect(puzzle.solve2(input: input2) == 31)
    }
    
    @Test
    func testAOC2() {
        let puzzle = AOC2()
        
        let input1 = """
        7 6 4 2 1
        1 2 7 8 9
        9 7 6 2 1
        1 3 2 4 5
        8 6 4 4 1
        1 3 6 7 9
        """
        
        #expect(puzzle.solve1(input: input1) == 2)
        
        let input2 = input1
        
        #expect(puzzle.solve2(input: input2) == 4)
    }
    
    @Test
    func testAOC3() {
        let puzzle = AOC3()
        
        let input1 = """
        xmul(2,4)%&mul[3,7]!@^do_not_mul(5,5)+mul(32,64]then(mul(11,8)mul(8,5))
        """
        
        #expect(puzzle.solve1(input: input1) == 161)
        
        let input2 = """
        xmul(2,4)&mul[3,7]!^don't()_mul(5,5)+mul(32,64](mul(11,8)undo()?mul(8,5))
        """
        
        #expect(puzzle.solve2(input: input2) == 48)
    }
    
    @Test
    func testAOC4() {
        let puzzle = AOC4()
        
        let input1 = """
        """
        
        #expect(puzzle.solve1(input: input1) == 0)
        
        let input2 = """
        """
        
        #expect(puzzle.solve2(input: input2) == 0)
    }
    
    @Test
    func testAOC5() {
        let puzzle = AOC5()
        
        let input1 = """
        """
        
        #expect(puzzle.solve1(input: input1) == 0)
        
        let input2 = """
        """
        
        #expect(puzzle.solve2(input: input2) == 0)
    }
    
    @Test
    func testAOC6() {
        let puzzle = AOC6()
        
        let input1 = """
        """
        
        #expect(puzzle.solve1(input: input1) == 0)
        
        let input2 = """
        """
        
        #expect(puzzle.solve2(input: input2) == 0)
    }
    
    @Test
    func testAOC7() {
        let puzzle = AOC7()
        
        let input1 = """
        """
        
        #expect(puzzle.solve1(input: input1) == 0)
        
        let input2 = """
        """
        
        #expect(puzzle.solve2(input: input2) == 0)
    }
    
    @Test
    func testAOC8() {
        let puzzle = AOC8()
        
        let input1 = """
        """
        
        #expect(puzzle.solve1(input: input1) == 0)
        
        let input2 = """
        """
        
        #expect(puzzle.solve2(input: input2) == 0)
    }
    
    @Test
    func testAOC9() {
        let puzzle = AOC9()
        
        let input1 = """
        """
        
        #expect(puzzle.solve1(input: input1) == 0)
        
        let input2 = """
        """
        
        #expect(puzzle.solve2(input: input2) == 0)
    }
    
    @Test
    func puzzle10() {
        let puzzle = AOC10()
        
        let input1 = """
        """
        
        #expect(puzzle.solve1(input: input1) == 0)
        
        let input2 = """
        """
        
        #expect(puzzle.solve2(input: input2) == 0)
    }
    
    @Test
    func puzzle11() {
        let puzzle = AOC11()
        
        let input1 = """
        """
        
        #expect(puzzle.solve1(input: input1) == 0)
        
        let input2 = """
        """
        
        #expect(puzzle.solve2(input: input2) == 0)
    }
    
    @Test
    func puzzle12() {
        let puzzle = AOC12()
        
        let input1 = """
        """
        
        #expect(puzzle.solve1(input: input1) == 0)
        
        let input2 = """
        """
        
        #expect(puzzle.solve2(input: input2) == 0)
    }
    
    @Test
    func puzzle13() {
        let puzzle = AOC13()
        
        let input1 = """
        """
        
        #expect(puzzle.solve1(input: input1) == 0)
        
        let input2 = """
        """
        
        #expect(puzzle.solve2(input: input2) == 0)
    }
    
    @Test
    func puzzle14() {
        let puzzle = AOC14()
        
        let input1 = """
        """
        
        #expect(puzzle.solve1(input: input1) == 0)
        
        let input2 = """
        """
        
        #expect(puzzle.solve2(input: input2) == 0)
    }
    
    @Test
    func puzzle15() {
        let puzzle = AOC15()
        
        let input1 = """
        """
        
        #expect(puzzle.solve1(input: input1) == 0)
        
        let input2 = """
        """
        
        #expect(puzzle.solve2(input: input2) == 0)
    }
    
    @Test
    func puzzle16() {
        let puzzle = AOC16()
        
        let input1 = """
        """
        
        #expect(puzzle.solve1(input: input1) == 0)
        
        let input2 = """
        """
        
        #expect(puzzle.solve2(input: input2) == 0)
    }
    
    @Test
    func puzzle17() {
        let puzzle = AOC17()
        
        let input1 = """
        """
        
        #expect(puzzle.solve1(input: input1) == 0)
        
        let input2 = """
        """
        
        #expect(puzzle.solve2(input: input2) == 0)
    }
    
    @Test
    func puzzle18() {
        let puzzle = AOC18()
        
        let input1 = """
        """
        
        #expect(puzzle.solve1(input: input1) == 0)
        
        let input2 = """
        """
        
        #expect(puzzle.solve2(input: input2) == 0)
    }
    
    @Test
    func puzzle19() {
        let puzzle = AOC19()
        
        let input1 = """
        """
        
        #expect(puzzle.solve1(input: input1) == 0)
        
        let input2 = """
        """
        
        #expect(puzzle.solve2(input: input2) == 0)
    }
    
    @Test
    func testAOC20() {
        let puzzle = AOC20()
        
        let input1 = """
        """
        
        #expect(puzzle.solve1(input: input1) == 0)
        
        let input2 = """
        """
        
        #expect(puzzle.solve2(input: input2) == 0)
    }
    
    @Test
    func testAOC21() {
        let puzzle = AOC21()
        
        let input1 = """
        """
        
        #expect(puzzle.solve1(input: input1) == 0)
        
        let input2 = """
        """
        
        #expect(puzzle.solve2(input: input2) == 0)
    }
    
    @Test
    func testAOC22() {
        let puzzle = AOC22()
        
        let input1 = """
        """
        
        #expect(puzzle.solve1(input: input1) == 0)
        
        let input2 = """
        """
        
        #expect(puzzle.solve2(input: input2) == 0)
    }
    
    @Test
    func testAOC23() {
        let puzzle = AOC23()
        
        let input1 = """
        """
        
        #expect(puzzle.solve1(input: input1) == 0)
        
        let input2 = """
        """
        
        #expect(puzzle.solve2(input: input2) == 0)
    }
    
    @Test
    func testAOC24() {
        let puzzle = AOC24()
        
        let input1 = """
        """
        
        #expect(puzzle.solve1(input: input1) == 0)
        
        let input2 = """
        """
        
        #expect(puzzle.solve2(input: input2) == 0)
    }
    
    @Test
    func testAOC25() {
        let puzzle = AOC25()
        
        let input1 = """
        """
        
        #expect(puzzle.solve1(input: input1) == 0)
        
        let input2 = """
        """
        
        #expect(puzzle.solve2(input: input2) == 0)
    }
}
