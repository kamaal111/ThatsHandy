#if !canImport(ObjectiveC)
import XCTest

extension GetUniqueNameTests {
    static var allTests = [
        ("testIfNameDoesNotChange", testIfNameDoesNotChange),
        ("testIfNameChangesToUniqueName", testIfNameChangesToUniqueName),
        ("testIfNameChangesToUniqueNameWith2OfTheSameNames", testIfNameChangesToUniqueNameWith2OfTheSameNames),
    ]
}

extension ThatsHandyTests {
    static var allTests = [
        ("testInit", testInit),
    ]
}

public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(GetUniqueNameTests.allTests),
        testCase(ThatsHandyTests.allTests),
    ]
}
#endif
