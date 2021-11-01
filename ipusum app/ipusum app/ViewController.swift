//
//  ViewController.swift
//  ipusum app
//
//  Created by 大野誠人 on 2021/10/13.
//

import UIKit

//ここでURLを一括管理
enum WebUrlType: String {
    case HP = "https://ipsummakoto.wixsite.com/mysit"
    case instagram = "https://www.apple.com/jp/"
    case blog = "https://ameblo.jp/ipsum0324/"
    case booking = "https://line.me/R/ti/p/%40051xowtp"
     
}
class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //外部ブラウザでURLを開く役割
    func webExternal(url:WebUrlType) {
        let url = NSURL(string: url.rawValue)
        if UIApplication.shared.canOpenURL(url! as URL) {
            UIApplication.shared.open(url! as URL, options: [:], completionHandler: nil)
        }
    }
    
    //HPボタンが押された時
    @IBAction func didTapHpButton(_ sender: UIButton) {
        webExternal(url: .HP)
    }
    //Instagramボタンが押された時
    @IBAction func didTapInstagramButton(_ sender: UIButton) {
        webExternal(url: .instagram)
    }
    //Blogボタンが押された時
    @IBAction func didTapBlogButton(_ sender: UIButton) {
        webExternal(url: .blog)
    }
    //予約ボタンが押された時
    @IBAction func didTapBookingButton(_ sender: UIButton) {
        webExternal(url: .booking)
    }
}

