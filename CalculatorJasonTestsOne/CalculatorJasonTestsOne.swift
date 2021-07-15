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
    
    func testViewControllerNotNil() {
        XCTAssertNotNil(viewController)
    }
    
    func testOperacionLabelsDivideByTrue() {
        let buttomProvate = UIButton()
        buttomProvate.tag = 11
        viewController.calculatorOperation = UILabel()
        viewController.calculatorOperation.text = "1"
        viewController.operationLabels(buttomProvate)
        XCTAssertEqual(viewController.calculatorOperation.text, "/" )
    }
    
    func testOperacionLabelsTimesTrue() {
        let buttomProvate = UIButton()
        buttomProvate.tag = 12
        viewController.calculatorOperation = UILabel()
        viewController.calculatorOperation.text = "666"
        viewController.operationLabels(buttomProvate)
        XCTAssertEqual(viewController.calculatorOperation.text, "x" )
    }
    
    func testOperacionLabelsMinusTrue() {
        let buttomProvate = UIButton()
        buttomProvate.tag = 13
        viewController.calculatorOperation = UILabel()
        viewController.calculatorOperation.text = "161"
        viewController.operationLabels(buttomProvate)
        XCTAssertEqual(viewController.calculatorOperation.text, "-" )
    }
    
    func testOperacionLabelsPlusTrue() {
        let buttomProvate = UIButton()
        buttomProvate.tag = 14
        viewController.calculatorOperation = UILabel()
        viewController.calculatorOperation.text = "311"
        viewController.operationLabels(buttomProvate)
        XCTAssertEqual(viewController.calculatorOperation.text, "+" )
    }
    
    func testResultDivideBy() {
        let buttomProvate = UIButton()
        buttomProvate.tag = 15
        viewController.operationResult = 11
        viewController.calculatorOperation = UILabel()
        viewController.calculatorOperation.text = ""
        viewController.beforeNumber = 10
        viewController.numberLabel = 2
        viewController.operationLabels(buttomProvate)
        XCTAssertEqual(viewController.calculatorOperation.text, "5.0")
    }
    
    func testResultMultipliedBy() {
        let buttomProvate = UIButton()
        buttomProvate.tag = 15
        viewController.operationResult = 12
        viewController.calculatorOperation = UILabel()
        viewController.calculatorOperation.text = ""
        viewController.beforeNumber = 10
        viewController.numberLabel = 2
        viewController.operationLabels(buttomProvate)
        XCTAssertEqual(viewController.calculatorOperation.text, "20.0")
    }
    
    func testResultMinus() {
        let buttomProvate = UIButton()
        buttomProvate.tag = 15
        viewController.operationResult = 13
        viewController.calculatorOperation = UILabel()
        viewController.calculatorOperation.text = ""
        viewController.beforeNumber = 10
        viewController.numberLabel = 2
        viewController.operationLabels(buttomProvate)
        XCTAssertEqual(viewController.calculatorOperation.text, "8.0")
    }
    
    func testResultPlus() {
        let buttomProvate = UIButton()
        buttomProvate.tag = 15
        viewController.operationResult = 14
        viewController.calculatorOperation = UILabel()
        viewController.calculatorOperation.text = ""
        viewController.beforeNumber = 10
        viewController.numberLabel = 2
        viewController.operationLabels(buttomProvate)
        XCTAssertEqual(viewController.calculatorOperation.text, "12.0")
    }
}
