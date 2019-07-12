import XCTest
@testable import DateHelpers

final class DateHelpersTests: XCTestCase {
    
    func test_Interval_Between() {
        
        let startString = "01-01-2019"
        let endString = "02-05-2019"
        
        let formatter = DateFormatter()
        formatter.dateFormat = "MM-dd-yyyy"
        
        let start = formatter.date(from: startString)!
        let end = formatter.date(from: endString)!
        
        let daysBetween = start.days(until: end)
        XCTAssertEqual(daysBetween, 35)
        
        let daysBetweenReversed = end.days(until: start)
        XCTAssertEqual(daysBetweenReversed, -35)
        
        let monthsBetween = start.months(until: end)
        XCTAssertEqual(monthsBetween, 1)
        
        let monthsBetweenReversed = end.months(until: start)
        XCTAssertEqual(monthsBetweenReversed, -1)
        
    }

    static var allTests = [
        ("test_Days_Between", test_Interval_Between),
    ]
}
