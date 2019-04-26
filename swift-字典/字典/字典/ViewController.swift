//
//  ViewController.swift
//  字典
//
//  Created by mac on 2019/4/25.
//  Copyright © 2019年 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        chuangjianzidian()
        xiugaizidian()
        yichujianzhidui()
        bianlizidian()
    }
    
    func chuangjianzidian(){
        _ = [Int : String]()
        var newDic : [Int:String] = [1:"one",2:"two",3:"three"]
        print("newDic = \(newDic)")
        
        let someVar = newDic[1]
        print("key = 1 的值 = \(someVar)")
    }
    
    func xiugaizidian(){
        var someDic = [Int : String]()
        someDic = [1:"one",2:"two",3:"three"]
        print("oldDic = \(someDic)")
        let changeDic = someDic.updateValue("newValue", forKey: 1)
        print("newDic = \(changeDic)")
    }
    
    func yichujianzhidui(){
        var someDict:[Int:String] = [1:"One", 2:"Two", 3:"Three"]
        var removedValue = someDict.removeValue(forKey: 2)
        print( "key = 1 的值为 \(someDict[1])" )
        print( "key = 2 的值为 \(someDict[2])" )
        print( "key = 3 的值为 \(someDict[3])" )
    }
    
    func bianlizidian(){
        let myDic:[Int:String] = [1:"one",2:"two",3:"three"]
        for (key,value) in myDic{
            print("字典 key = \(key) value = \(value)")
        }
    }

}

