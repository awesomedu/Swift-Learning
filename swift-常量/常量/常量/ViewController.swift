//
//  ViewController.swift
//  常量
//
//  Created by mac on 2019/4/25.
//  Copyright © 2019年 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        shengmingchangliang()
        leixingbiaozhu()
        changliangmingming()
        changliangshuchu()
    }
    
    func shengmingchangliang(){
        let constant = 10
        print(constant)
    }
    
    func leixingbiaozhu(){
        let consB:Float = 3.123
        print(consB)
    }
    
    func changliangmingming(){
        let _const = "swift"
        print(_const)
        
        let 呵呵 = "哈哈"
        print(呵呵)
    }
    
    func changliangshuchu(){
        let name = "qwe"
        let site = "runoob"
        print("\(name) = \(site)")
    }
    


}

