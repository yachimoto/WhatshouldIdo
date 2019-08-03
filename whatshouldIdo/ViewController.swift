//
//  ViewController.swift
//  whatshouldIdo
//
//  Created by SeitoYachimoto on 2019/08/02.
//  Copyright © 2019 谷地元　星斗. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func didclickbottom(_ sender: UIButton) {
    
        // performSegueは画面遷移のための関数
        performSegue(withIdentifier: "countDown", sender: nil)

        
    }
    
    
}

