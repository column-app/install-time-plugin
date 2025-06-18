import Foundation

@objc public class InstallTime: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
}
