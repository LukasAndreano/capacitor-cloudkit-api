import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(CapacitorCloudkitAPIPlugin)
public class CapacitorCloudkitAPIPlugin: CAPPlugin, CAPBridgedPlugin {
    public let identifier = "CapacitorCloudkitAPIPlugin"
    public let jsName = "CapacitorCloudkitAPI"
    public let pluginMethods: [CAPPluginMethod] = [
        CAPPluginMethod(name: "echo", returnType: CAPPluginReturnPromise)
    ]
    private let implementation = CapacitorCloudkitAPI()

    @objc func echo(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        call.resolve([
            "value": implementation.echo(value)
        ])
    }
}
