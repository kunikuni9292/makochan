//
//  ViewController.swift
//  ipusum app
//
//  Created by 大野誠人 on 2021/10/13.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didTapHpButton(_ sender: UIButton) {
        //外部ブラウザでURLを開く
            let url = NSURL(string: "https://ipsummakoto.wixsite.com/mysite")
            if UIApplication.shared.canOpenURL(url! as URL) {
              UIApplication.shared.open(url! as URL, options: [:], completionHandler: nil)
            }
    }
    
}

