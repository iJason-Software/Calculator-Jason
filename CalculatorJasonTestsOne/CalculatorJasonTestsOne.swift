//
//  CalculatorJasonTestsOne.swift
//  CalculatorJasonTestsOne
//
//  Created by build-server on 7/13/21.
//
import Foundation
import XCTest
@testable import CalculatorJason

class CalculatorJasonTestsOne: XCTestCase {
    
    var viewController: ViewController!
    
    override func setUpWithError() throws {
         
         viewController = ViewController()
        
    }

    override func tearDownWithError() throws {
    
      viewController = nil
        
    }

    func testExample() throws {
        
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testViewControllerNotNil() {
        XCTAssertNotNil(viewController)
        
        //XCTAssertNil(viewController)
    }

    
    func testOperacionLabelsDivideByTrue() {
        let buttomProvate = UIButton()
        buttomProvate.tag = 11
        viewController.calculatorOperation = UILabel()
        viewController.calculatorOperation.text = "191"
        viewController.operationLabels(buttomProvate)
        XCTAssertEqual(viewController.calculatorOperation.text, "/" )
    }
    
    func testOperacionLabelsTimesTrue() {
        let buttomProvate = UIButton()
        buttomProvate.tag = 12
        viewController.calculatorOperation = UILabel()
        viewController.calculatorOperation.text = "191"
        viewController.operationLabels(buttomProvate)
        XCTAssertEqual(viewController.calculatorOperation.text, "x" )
    }
    
    func testOperacionLabelsMinusTrue() {
        let buttomProvate = UIButton()
        buttomProvate.tag = 13
        viewController.calculatorOperation = UILabel()
        viewController.calculatorOperation.text = "191"
        viewController.operationLabels(buttomProvate)
        XCTAssertEqual(viewController.calculatorOperation.text, "-" )
    }
    
    func testOperacionLabelsPlusTrue() {
        let buttomProvate = UIButton()
        buttomProvate.tag = 14
        viewController.calculatorOperation = UILabel()
        viewController.calculatorOperation.text = "191"
        viewController.operationLabels(buttomProvate)
        XCTAssertEqual(viewController.calculatorOperation.text, "+" )
    }
}
