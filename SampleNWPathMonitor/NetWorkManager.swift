//
//  NetWorkManager.swift
//  SampleNWPathMonitor
//
//  Created by 三浦　登哉 on 2021/03/23.
//

import Foundation
import Network

final class NetWorkManager {
    static let shared = NetWorkManager()
    private let monitor = NWPathMonitor()
    private let queue = DispatchQueue(label: "Monitor")
    private init (){}
    
    func isOnline(completion: ((Bool) -> Void)? = nil) {
        monitor.pathUpdateHandler = { path in
            if path.status == .satisfied {
                print("通信環境あります")
                completion?(true)
            } else {
                print("通信不可です")
                completion?(false)
            }
        }
        monitor.start(queue: queue)
    }
}
