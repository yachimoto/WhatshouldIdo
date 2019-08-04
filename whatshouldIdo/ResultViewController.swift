//
//  ResultViewController.swift
//  whatshouldIdo
//
//  Created by SeitoYachimoto on 2019/08/03.
//  Copyright © 2019 谷地元　星斗. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    //        ランダム関数
    var titles: [String] = [ "べき!!!!!!", "べきではない!!" ]
    let index = (Int)(arc4random_uniform(2))
    
    @IBOutlet weak var label: UILabel!
    
//      画面遷移のラベル
    @IBOutlet weak var label2: UILabel!
    var value = "空です"

    
    override func viewDidLoad() {
        super.viewDidLoad()
        //        ランダム関数
        label.text = ("\(titles[index])")
        //        画面遷移のラベル
        label2.text = value
        

    }
    
}
