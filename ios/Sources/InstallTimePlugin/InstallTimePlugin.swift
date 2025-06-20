import Foundation
import Capacitor

@objc(InstallTimePlugin)
public class InstallTimePlugin: CAPPlugin, CAPBridgedPlugin {
    public let identifier = "InstallTimePlugin"
    public let jsName = "InstallTime"
    public let pluginMethods: [CAPPluginMethod] = [
        CAPPluginMethod(name: "getInstallTime", returnType: CAPPluginReturnPromise)
    ]

    @objc func getInstallTime(_ call: CAPPluginCall) {
        if let documentsUrl = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).last,
           let attrs = try? FileManager.default.attributesOfItem(atPath: documentsUrl.path),
           let creationDate = attrs[.creationDate] as? Date {
            let timestamp = creationDate.timeIntervalSince1970 * 1000 // milliseconds
            call.resolve([
                "installTime": timestamp
            ])
        } else {
            call.reject("Failed to get install time")
        }
    }
}
