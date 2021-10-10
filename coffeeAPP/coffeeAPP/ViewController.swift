//
//  ViewController.swift
//  coffeeAPP
//
//  Created by 崎原邦達 on 2021/09/25.
//

import UIKit
protocol TableViewControllerDelegate: AnyObject {
    func didTapCell(text: String)
}

class ViewController: UIViewController, StoryBoardInstiatable {

    
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.delegate = self
            tableView.dataSource = self
            tableView.register(UINib(nibName: TableViewCell.className, bundle: nil), forCellReuseIdentifier: "cell")
        }
    }
    var delegate: TableViewControllerDelegate?
    
    var goriraTitleAyyay = ["BOSSごリラ","ヤンキーゴリラ","ツッパリゴリラ"]
    var goriraDetileArray = ["実は大人しい","AAAAA","BBBBBBB"]
    var goriraImageArray = ["gorira1","gorira2","gorira3"]
    var goriraUrlArray = ["https://tabelog.com/kanagawa/A1401/A140204/14027835/","https://qiita.com/turmeric/items/046acb987c4353b3f308","https://hawksnowlog.blogspot.com/2019/11/use-pickerview-as-keyboard-on-textfield.html#uitextfield-%E3%82%92%E8%A8%AD%E7%BD%AE%E3%81%99%E3%82%8B",]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
}
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return goriraTitleAyyay.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell else { return UITableViewCell() }
        cell.setup(titleText: goriraTitleAyyay[indexPath.row], detailText: goriraDetileArray[indexPath.row], image: UIImage(named: goriraImageArray[indexPath.row] )!)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //タップした時の選択色を消す
        tableView.deselectRow(at: indexPath as IndexPath, animated: true)
        
        //外部ブラウザでURLを開く
        let url = NSURL(string: goriraUrlArray[indexPath.row])
        if UIApplication.shared.canOpenURL(url! as URL) {
            UIApplication.shared.open(url! as URL, options: [:], completionHandler: nil)
            //test111
            //test12345
        }
    }
}

