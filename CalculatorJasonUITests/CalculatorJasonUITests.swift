//
//  CalculatorJasonUITests.swift
//  CalculatorJasonUITests
//
//  Created by build-server on 7/13/21.
//

import XCTest

class CalculatorJasonUITests: XCTestCase {
  
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        
    }
    
    func testPlusResult() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        app.buttons["3"].tap()
        app.buttons["+"].tap()
        app.buttons["3"].tap()
        app.buttons["="].tap()
        XCTAssertEqual(app.staticTexts.element(boundBy: 0).label , "6.0")
    }
    
    func testMinusResult() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        app.buttons["3"].tap()
        app.buttons["-"].tap()
        app.buttons["3"].tap()
        app.buttons["="].tap()
        XCTAssertEqual(app.staticTexts.element(boundBy: 0).label , "0.0")
    }
    func testTimesResult() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        app.buttons["3"].tap()
        app.buttons["x"].tap()
        app.buttons["3"].tap()
        app.buttons["="].tap()
        XCTAssertEqual(app.staticTexts.element(boundBy: 0).label , "9.0")
    }
    func testDivideByResult() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        app.buttons["3"].tap()
        app.buttons["/"].tap()
        app.buttons["3"].tap()
        app.buttons["="].tap()
        XCTAssertEqual(app.staticTexts.element(boundBy: 0).label , "1.0")
    }
    func testAttemptToGiveError() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        app.buttons["3"].tap()
        app.buttons["3"].tap()
        app.buttons["+"].tap()
        app.buttons["-"].tap()
        app.buttons["3"].tap()
        app.buttons["C"].tap()
        app.buttons["="].tap()
        app.buttons["="].tap()
        app.buttons["+"].tap()
        app.buttons["3"].tap()
        app.buttons["3"].tap()
        app.buttons["-"].tap()
        app.buttons["3"].tap()
        app.buttons["3"].tap()
        app.buttons["="].tap()
        XCTAssertEqual(app.staticTexts.element(boundBy: 0).label , "0.0")
    }
}
