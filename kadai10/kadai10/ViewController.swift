//
//  ViewController.swift
//  kadai10
//
//  Created by 永野玄 on 2021/05/11.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 47
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          let prefectures: NSArray = [ "東京","埼玉","神奈川","千葉","茨城","栃木","群馬","静岡","長野","新潟","山梨","秋田","宮城","福島","山形","北海道","愛知","三重","福井","石川","徳島","愛媛","香川","滋賀","大阪","京都","岩手","青森","富山","岐阜","兵庫","奈良","和歌山","鳥取","岡山","島根","広島","山口","高知","大分","佐賀","福岡","鹿児島","宮崎","長崎","熊本","沖縄"]
        let cells:[String] = ["cell1","cell2","cell3"]
        let identifire = cells[indexPath.row % 3]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: identifire, for:indexPath)
        
        cell.textLabel?.text = "\(prefectures[indexPath.row])"
        cell.detailTextLabel?.text = "\(indexPath.row + 1)番目の都道府県です"
        cell.detailTextLabel?.textColor = UIColor.lightGray
        return cell
        
    }
}

