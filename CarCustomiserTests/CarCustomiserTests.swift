//
//  CarCustomiserTests.swift
//  CarCustomiserTests
//
//  Created by Akbar, Abdullah (RCH) on 14/01/2023.
//

import XCTest
@testable import CarCustomiser

class CarCustomiserTests: XCTestCase {
    func testNewCarGivesMeACarWithAllAttributeSet() {
        //arrange
        //act
        let car = Car(make:"Mazda", model:"MX-5", topSpeed: 125, acceleration:7.7, handling: 5)
        //assert
        XCTAssertEqual(car.make, "Mazda")
        XCTAssertEqual(car.model, "MX-5")
        XCTAssertEqual(car.topSpeed, 125)
        XCTAssertEqual(car.acceleration, 7.7)
        XCTAssertEqual(car.handling, 5)
    }
    
    func testNewCarDisplaysCorrectattributes() {
        // arrange
        // act
        let car = Car(make:"Mazda", model:"MX-5", topSpeed: 125, acceleration:7.7, handling: 5)
        // assert
        XCTAssertEqual(car.displayStats(), """
             Car Make: \(car.make)
             Car Model: \(car.model)
             Car topSpeed(125mph): \(car.topSpeed)
             Car acceleration(0-60): \(car.acceleration)s
             Car handling: \(car.handling)
             """)
        
    }
}
 
