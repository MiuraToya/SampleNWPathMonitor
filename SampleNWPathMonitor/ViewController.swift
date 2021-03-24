//
//  ViewController.swift
//  SampleNWPathMonitor
//
//  Created by 三浦　登哉 on 2021/03/23.
//

import UIKit

class ViewController: UIViewController {
    private var isOnline: Bool? = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        NetWorkManager.shared.isOnline { result in
            self.isOnline = result
        }
    }
    // 投稿ボタンタップ
    @IBAction func testBtn(_ sender: Any) {
        guard let _isOnline = isOnline else { return }
        print("DEBUG_PRINT:\(_isOnline)")
        // ネットワーク判定
        if _isOnline == true {
            // オンライン時の処理
            print("オンラインです")
        } else {
            // オフライン時の処理
            print("オフラインです")
        }
    }
}
