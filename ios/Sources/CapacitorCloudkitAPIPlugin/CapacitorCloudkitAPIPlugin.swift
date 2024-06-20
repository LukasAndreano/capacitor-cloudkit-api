import Foundation
import Capacitor

@objc(CapacitorCloudkitAPIPlugin)
public class CapacitorCloudkitAPIPlugin: CAPPlugin, CAPBridgedPlugin {
    public let identifier = "CapacitorCloudkitAPIPlugin"
    public let jsName = "CapacitorCloudkitAPI"
    public let pluginMethods: [CAPPluginMethod] = [
        CAPPluginMethod(name: "saveKeyValue", returnType: CAPPluginReturnPromise),
        CAPPluginMethod(name: "getKeyValue", returnType: CAPPluginReturnPromise)
    ]
    private let implementation = CapacitorCloudkitAPI()

    @objc func saveKeyValue(_ call: CAPPluginCall) {
        let key = call.getString("key") ?? ""
        let value = call.getString("value") ?? ""

        implementation.saveKeyValue(key: key, value: value) { (record, error) in
            if let error = error {
                call.reject("Error saving key-value: \(error.localizedDescription)")
            } else {
                call.resolve([
                    "key": key,
                    "value": value
                ])
            }
        }
    }

    @objc func getKeyValue(_ call: CAPPluginCall) {
        let key = call.getString("key") ?? ""

        implementation.getKeyValue(key: key) { (record, error) in
            if let error = error {
                call.reject("Error fetching key-value: \(error.localizedDescription)")
            } else if let record = record {
                let value = record["value"] as? String ?? ""
                call.resolve([
                    "key": key,
                    "value": value
                ])
            } else {
                call.reject("No record found for key: \(key)")
            }
        }
    }
}
