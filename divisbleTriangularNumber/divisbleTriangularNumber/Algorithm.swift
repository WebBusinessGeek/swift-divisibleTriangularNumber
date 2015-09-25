//
//  Algorithm.swift
//  divisbleTriangularNumber
//
//  Created by Kev Washington on 9/25/15.
//  Copyright © 2015 Kev Washington. All rights reserved.
//

import UIKit

class Algorithm: NSObject {
    
    var testsAreWorkingMessage = "Tests are working";
    
    func getTestsAreWorkingMessage() -> String {
        return self.testsAreWorkingMessage;
    }
    
    func findFactors(integerToFactor: Int) -> [Int] {
        var returnValue = [Int]();
        var looper: Int = 1;
        var reversalFound: Bool = false;
        var sqrtFound: Bool = false;
        
        while(looper != integerToFactor && !reversalFound && !sqrtFound) {
            if(integerToFactor % looper == 0){
                reversalFound = returnValue.contains(looper) ? true : false;
                sqrtFound = looper * looper == integerToFactor ? true : false;
                if(!reversalFound){returnValue.append(looper);}
                if(!sqrtFound && !reversalFound){returnValue.append(integerToFactor / looper);}
            }
            looper++;
        }
        return returnValue;
    }
    
    func findFirstTriangularNumberWithDivisorsOverAmountSpecified(startNumber: Int, amountSpecified: Int) -> Int {
        var returnValue: Int = 0;
        var previousNumber: Int = startNumber;
        var nextNumber: Int = previousNumber + 1;
        var triangularNumber: Int = previousNumber + nextNumber;
        var problemSolved: Bool = false;
        
        while(!problemSolved) {
            var factors: [Int] = self.findFactors(triangularNumber);
            if(factors.count > amountSpecified) {
                problemSolved = true;
                returnValue = triangularNumber;
            }
            nextNumber++;
            triangularNumber += nextNumber;
        }
        return returnValue;
    }

}
