import Foundation
import CloudKit

@objc public class CapacitorCloudkitAPI: NSObject {
    private var container: CKContainer
    private var database: CKDatabase

    override init() {
        // Логирование перед инициализацией
        print("Initializing CKContainer.default()")
        self.container = CKContainer.default()
        self.database = container.privateCloudDatabase
        super.init()
        print("CKContainer and CKDatabase initialized")
    }

    @objc public func saveKeyValue(key: String, value: String, completion: @escaping (CKRecord?, Error?) -> Void) {
        let recordID = CKRecord.ID(recordName: key)
        let record = CKRecord(recordType: "KeyValue", recordID: recordID)
        record["value"] = value as CKRecordValue

        database.save(record) { (record, error) in
            completion(record, error)
        }
    }

    @objc public func getKeyValue(key: String, completion: @escaping (CKRecord?, Error?) -> Void) {
        let recordID = CKRecord.ID(recordName: key)
        database.fetch(withRecordID: recordID) { (record, error) in
            completion(record, error)
        }
    }
}
