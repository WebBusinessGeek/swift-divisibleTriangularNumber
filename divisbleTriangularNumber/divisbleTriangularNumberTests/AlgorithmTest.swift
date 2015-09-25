//
//  AlgorithmTest.swift
//  divisbleTriangularNumber
//
//  Created by Kev Washington on 9/25/15.
//  Copyright © 2015 Kev Washington. All rights reserved.
//

import XCTest

class AlgorithmTest: XCTestCase {
    
    func testTestsAreWorking() {
        let algo = Algorithm();
        let result = algo.getTestsAreWorkingMessage();
        let correct = "Tests are working";
        XCTAssertEqual(correct, result);
    }
    
    func testItReturns1And3For3() {
        let algo = Algorithm();
        let integerToFactor = 3;
        let result = algo.findFactors(integerToFactor);
        var correct = [Int]();
        correct.append(1);
        correct.append(3);
        XCTAssertEqual(correct, result);
    }
    
    func testItReturns1_6_2_3For6() {
        let algo = Algorithm();
        let integerToFactor = 6;
        let result = algo.findFactors(integerToFactor);
        var correct = [Int]();
        correct.append(1);
        correct.append(6);
        correct.append(2);
        correct.append(3);
        XCTAssertEqual(correct, result);
    }
    
    func testItReturns1_28_2_14_4_7For28() {
        let algo = Algorithm();
        let integerToFactor = 28;
        let result = algo.findFactors(integerToFactor);
        var correct = [Int]();
        correct.append(1);
        correct.append(28);
        correct.append(2);
        correct.append(14);
        correct.append(4);
        correct.append(7);
        XCTAssertEqual(correct, result);
    }
    
    func testItReturns1_36_2_18_3_12_4_9_6For36() {
        let algo = Algorithm();
        let integerToFactor = 36;
        let result = algo.findFactors(integerToFactor);
        var correct = [Int]();
        correct.append(1);
        correct.append(36);
        correct.append(2);
        correct.append(18);
        correct.append(3);
        correct.append(12);
        correct.append(4);
        correct.append(9);
        correct.append(6);
        XCTAssertEqual(correct, result);
    }
    
    func testItReturns1_48_2_24_3_16_4_12_6_8For48() {
        let algo = Algorithm();
        let integerToFactor = 48;
        let result = algo.findFactors(integerToFactor);
        var correct = [Int]();
        correct.append(1);
        correct.append(48);
        correct.append(2);
        correct.append(24);
        correct.append(3);
        correct.append(16);
        correct.append(4);
        correct.append(12);
        correct.append(6);
        correct.append(8);
        XCTAssertEqual(correct, result);
    }
    
}
