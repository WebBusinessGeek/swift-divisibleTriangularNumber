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
    
}
