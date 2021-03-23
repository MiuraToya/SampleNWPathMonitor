//
//  ViewController.swift
//  SampleNWPathMonitor
//
//  Created by 三浦　登哉 on 2021/03/23.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // 投稿ボタンタップ
    @IBAction func testBtn(_ sender: Any) {
        // ネットワーク判定
        NetWorkManager.shared.isOnline { result in
            if result == true {
                // オンライン時の処理
                print("オンラインです")
            } else {
                // オフライン時の処理
                print("オフラインです")
            }
        }
    }
}
