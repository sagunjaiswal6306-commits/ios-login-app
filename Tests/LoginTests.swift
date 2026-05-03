import XCTest

class LoginTests: XCTestCase {
    
    func testValidEmail() {
        XCTAssertTrue(Validator.isValidEmail("test@gmail.com"))
    }
    
    func testInvalidEmail() {
        XCTAssertFalse(Validator.isValidEmail("wrong-email"))
    }
}