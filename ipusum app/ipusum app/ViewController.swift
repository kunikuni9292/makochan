//
//  ViewController.swift
//  ipusum app
//
//  Created by 大野誠人 on 2021/10/13.
//

import UIKit

//ここでURLを一括管理
enum WebUrlType: String {
    case HP
    case instagram
    case blog
    case booking
    
    
    init(title: String?) {
        switch title {
        case "HP": self = .HP
        case "instagram": self = .instagram
        case "Blog": self = .blog
        case "問い合わせ": self = .booking
        default: self = .HP
        }
    }
    
    var url: String {
        switch self {
        case .HP: return "https://ipsummakoto.wixsite.com/mysit"
        case .instagram: return "https://www.apple.com/jp/"
        case .blog: return "https://ameblo.jp/ipsum0324/"
        case .booking: return "https://line.me/R/ti/p/%40051xowtp"
        }
    }
}
class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //HPボタンが押された時
    @IBAction func didTapHpButton(_ sender: UIButton) {
        let _text = sender.titleLabel?.text
        let type = WebUrlType(title: _text)
        let url = NSURL(string: type.url)
        if UIApplication.shared.canOpenURL(url! as URL) {
            UIApplication.shared.open(url! as URL, options: [:], completionHandler: nil)
        }
    }
}

