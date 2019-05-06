//
//  ViewController.swift
//  函数
//
//  Created by mac on 2019/4/26.
//  Copyright © 2019年 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        hanshudingyi()
        print(duogecanshu(name: "tangdu", site: "shige", age: "nansheng"))
        
        if let bounds = yuanzuzuoweifanhuzhiMinMax(array: [8,-6,2,109,3,71]){
            print("min = \(bounds.min) max = \(bounds.max)")
        }
        
    }
    
    func hanshudingyi(){
        print(xingshicanshu(site: "www.baidu.com"))
    }
    
    func xingshicanshu(site:String) -> String{
        return site
    }
    
    func duogecanshu(name:String,site:String,age:String) -> String{
        return name + site + age
    }
    
    func yuanzuzuoweifanhuzhiMinMax(array:[Int]) -> (min:Int,max:Int)?{
        if array.isEmpty{
            return nil
        }
        var currentMin = array[0]
        var currentMax = array[0]
        for value in array[1..<array.count] {
            if value < currentMin{
                currentMin = value
            }else if value > currentMax{
                currentMax = value
            }
        }
        return(currentMin,currentMax)
    }


}

