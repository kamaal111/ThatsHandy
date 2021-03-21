import XCTest
import ThatsHandyTests

var tests = [XCTestCaseEntry]()
tests += GetUniqueNameTests.allTests()
tests += ThatsHandyTests.allTests()
XCTMain(tests)
