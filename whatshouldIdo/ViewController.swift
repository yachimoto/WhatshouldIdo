//
//  ViewController.swift
//  whatshouldIdo
//
//  Created by SeitoYachimoto on 2019/08/02.
//  Copyright © 2019 谷地元　星斗. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//    テキストフィールド
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func didclickbottom(_ sender: UIButton) {
        
        //アラートが空のとき
        if textField.text == ""{
            //         Alertの画面を作成する。
        let alert = UIAlertController(title: "入力不足です", message: "必須項目ですのでご入力ください", preferredStyle: .alert)
        //        作成したAlert画面を表示する。
        present(alert, animated: true, completion: nil)
            
//            通常の選択肢を作成する
            let yesAction = UIAlertAction(title: "はい", style: .default) { (UIAlertAction) in
                print("はいが押されました")
                
            }
            //            作成した選択肢をアラート画面に追加する
            alert.addAction(yesAction)
        }
        
            
            //         テキストフィールドの値を次画面に渡す処理
            let inputValue = textField.text
            performSegue(withIdentifier: "countDown", sender: inputValue)
            
        
    }
    
//次画面に渡す値を次画面のViewControllerの変数に設定??
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
        if segue.identifier == "countDown" {
        let countDownVC = segue.destination as! CountDownViewController
        countDownVC.value = sender as! String
        }
    }
    
    
}

