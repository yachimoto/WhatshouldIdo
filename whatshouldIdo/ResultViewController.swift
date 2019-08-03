//
//  ResultViewController.swift
//  whatshouldIdo
//
//  Created by SeitoYachimoto on 2019/08/03.
//  Copyright © 2019 谷地元　星斗. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        ランダム関数
        var titles: [String] = [ "べき!!!!!!", "べきではない!" ]
        let index = (Int)(arc4random_uniform(2))
        label.text = ("\(titles[index])")
    }
    
}
