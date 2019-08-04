//
//  CountDownViewController.swift
//  whatshouldIdo
//
//  Created by SeitoYachimoto on 2019/08/03.
//  Copyright © 2019 谷地元　星斗. All rights reserved.
//

import UIKit

class CountDownViewController: UIViewController {

//    カウントダウン
    @IBOutlet weak var countDownLabel: UILabel!
    var timer = Timer()
    var count = 3
    var withIdentifier = String()
    
//    画面遷移
    @IBOutlet weak var label: UILabel!
    var value = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        createTimer()
    }
    
    
    
    //タイマーの作成
    func createTimer(){
        
        let timer = Timer.scheduledTimer(timeInterval: 1.0,
                                         target: self,
                                         selector: #selector(self.timerAction(sender:)),
                                         userInfo: nil,
                                         repeats: true)
        timer.fire()
        
    }
    
    //タイマーの処理
    @objc func timerAction(sender:Timer){
        
        countDownLabel.text = String(count)
        if count == 0 {
            sender.invalidate() //止める
            performSegue(withIdentifier: "toResult", sender: value)
        }
        count -= 1
    }
    
    //次画面に渡す値を次画面のViewControllerの変数に設定??
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toResult" {
            let toResultVC = segue.destination as! ResultViewController
            toResultVC.value = sender as! String
        }
    }
    
}
