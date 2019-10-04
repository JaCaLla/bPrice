//
//  UTAppEnvironment.swift

import XCTest
@testable import bPrice
class UTAppEnvironment: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    func test_toString() {
        XCTAssertEqual(Environment.debug.toString,"dev")
        XCTAssertEqual(Environment.staging.toString,"staging")
        XCTAssertEqual(Environment.production.toString,"production")
    }

}
