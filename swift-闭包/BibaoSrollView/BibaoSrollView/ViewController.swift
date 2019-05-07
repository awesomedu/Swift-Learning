//
//  ViewController.swift
//  BibaoSrollView
//
//  Created by mac on 2019/5/6.
//  Copyright © 2019年 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let rect = CGRect(x: 0, y: 20, width: view.bounds.width, height: 50)
        let sv = TDLabelScrollView(frame: rect, numberOfLabel: { () -> Int in
            return 20
        }) { (index) -> UILabel in
            let label = UILabel()
            label.text = "第\(index)个"
            label.font = UIFont.systemFont(ofSize: 18)
            label.sizeToFit()
            label.font = UIFont.systemFont(ofSize: 14)
            return label
        }
        view.addSubview(sv)
        
        let addView = TDView(frame: CGRect(x: 0, y: 80, width: view.bounds.width, height: 80)) { (tdView) in
            tdView.backgroundColor = UIColor.yellow
        }
        
        view.addSubview(addView)
        
        
    }
}

