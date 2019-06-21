//
//  BooleanToStringTests.swift
//  BooleanToStringTests
//
//  Created by Lucas Lima Noronha on 21/06/2019.
//  Copyright © 2019 Lucas Lima Noronha. All rights reserved.
//

import XCTest
@testable import BooleanToString

class BooleanToStringTests: XCTestCase {
    
    static var allTests = [
        ("Function should return \"true\" when true is passed as input.", testExample1),
        ("Function should return \"false\" when false is passed as input.", testExample2)
    ]
    
    func testExample1() {
        XCTAssertEqual(booleanToString(true), "true")
    }
    
    func testExample2() {
        XCTAssertEqual(booleanToString(false), "false")
    }
    
    func booleanToString(_ b: Bool) -> String {
        return b.description
    }
}

    

