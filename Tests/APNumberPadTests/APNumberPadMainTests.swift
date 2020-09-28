//
//  File.swift
//  
//
//  Created by Andrew Podkovyrin on 28.09.2020.
//

import XCTest

import APNumberPad

class Test1: XCTestCase, APNumberPadDelegate {
    func testInit() {
        let np = APNumberPad(delegate: self)
        XCTAssertNotNil(np)
    }
    
    func testResources() {
        XCTAssertNotNil(APNumberPadDefaultStyle.clearFunctionButtonImage())
        XCTAssertNotNil(APNumberPadDefaultStyle.clearFunctionButtonImageHighlighted())
    }
}
