//
//  ViewController.swift
//  数组
//
//  Created by mac on 2019/4/25.
//  Copyright © 2019年 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        chuangjianshuzu()
        fangwenshuzu()
        xiugaishuzu()
        bianlishuzu()
        bianlizhihesuoyin()
    }
    
    func chuangjianshuzu(){
        // MARK 创建指定类型空数组
        let arr = [String]()
        
        let arr1 = [String](repeating: "wenzi", count: 3)
        
        let arr2 : [Int] = [10,20,30]
        
        print("arr = \(arr) arr1 = \(arr1) arr2 = \(arr2)")
    }
    
    func fangwenshuzu(){
        let myArr:[String] = ["呵呵","哈哈","哦哦"]
        print("arr1 = \(myArr[0]) arr_2 = \(myArr[1]) arr_3 = \(myArr[2])")
    }
    
    func xiugaishuzu(){
        var myArr = [Int]()
        myArr.append(10)
        myArr.append(20)
        myArr += [40]
        
        
        let newArr = myArr[0]
        print("第一个元素 = \(newArr)")
        print("第二个元素 = \(myArr[1])")
        print("第三个元素 = \(myArr[2])")
    }
    
    func bianlishuzu(){
        var strings = [String]()
        strings.append("asdf")
        strings.append("asdfasdf")
        strings.append("aqwer")
        strings += ["apple"]
        
        for ele in strings{
            print(ele)
        }
    }
    
    func bianlizhihesuoyin(){
        var strings = [String]()
        strings.append("asdf")
        strings.append("asdfasdf")
        strings.append("aqwer")
        strings += ["apple"]
        
        for (index, item) in strings.enumerated() {
            print("index = \(index) item = \(item)")
        }
    }


}

