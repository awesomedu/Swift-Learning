//
//  ViewController.swift
//  tableView_swift
//
//  Created by mac on 2019/4/21.
//  Copyright © 2019年 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    lazy var tableview : UITableView = UITableView()
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
}

extension ViewController{
    func setUpUI(){
        tableview.frame = self.view.bounds
        view.addSubview(tableview)
        tableview.delegate = self
        tableview.dataSource = self
    }
}

extension ViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let id : String = "cellID"
        var cell = tableview.dequeueReusableCell(withIdentifier: id) as? HomeCell
        if cell == nil {
            cell = HomeCell(style: .default, reuseIdentifier: id)
        }
        
        cell?.label1?.text = "label = \(indexPath.row)"
        cell?.label2?.text = "label2 = \(indexPath.row)"
        cell?.label3?.text = "label3 = \(indexPath.row)"
        
        return cell!
    }
}



