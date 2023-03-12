

import XCTest
@testable import Alarm_ios_swift


class SchedulerTestCase: XCTestCase {
    
    let scheduler = Scheduler()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testSetupNotificationSettings() {
        let settings = scheduler.setupNotificationSettings()
        XCTAssert((UInt8(settings.types.rawValue) & UInt8(UIUserNotificationType.alert.rawValue)) == UInt8(UIUserNotificationType.alert.rawValue))
        XCTAssert((UInt8(settings.types.rawValue) & UInt8(UIUserNotificationType.sound.rawValue)) == UInt8(UIUserNotificationType.sound.rawValue))
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
