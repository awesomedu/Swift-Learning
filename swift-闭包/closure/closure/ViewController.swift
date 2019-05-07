//
//  ViewController.swift
//  Closure
//
//  Created by mac on 2019/5/6.
//  Copyright © 2019年 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        bibaocanshu()
        sortedMethod()
    }
    
    func bibao(){
        let student = {print("bibao")}
        student()
    }
    
    func bibaocanshu(){
        let divide = {(value1:Int,value2:Int)-> Int in
            return value1 / value2
        }
        let result = divide(20,30)
        print(result)
    }
    
    func sortedMethod(){
        let names = ["123","34","88","800"]
        func backward(s1:String,s2:String) -> Bool{
            return s1 > s2
        }
        let revsered = names.sorted(by: backward)
        print(revsered)
    }
    
    func takeClosure(closure:()->Void){
        print("函数体部分")
    }
    
    func weisuibibaoshili(){
        let resulet1 = caculateTwoNumbers(num1: 2, num2: 3, CaluFunction: {(num3:Int,num4:Int) -> Int in return num3+num4})
        
        print(resulet1)
        
    }
    
    func caculateTwoNumbers(num1: Int, num2: Int, CaluFunction: (_ num3:Int,_ num4:Int) -> Int) -> Int{
        return CaluFunction(num1, num2)
    }
    
    
    

}

