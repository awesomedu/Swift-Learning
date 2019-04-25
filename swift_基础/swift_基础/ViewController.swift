//
//  ViewController.swift
//  swift_基础
//
//  Created by mac on 2019/4/24.
//  Copyright © 2019年 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // MARK: 常量
        changliang()
        print("----------------------------------------------------------------------")
        // MARK: 变量
        bianliang()
        print("----------------------------------------------------------------------")
        // MARK: 整数
        zhengshu()
        print("----------------------------------------------------------------------")
        // MARK: 浮点
        fudianshu()
        print("----------------------------------------------------------------------")
        // MARK: 类型安全
        leixinganquan()
        print("----------------------------------------------------------------------")
        // MARK: 数值型字面量
        zimianliang()
        print("----------------------------------------------------------------------")
        // MARK: 数值类型转换
        shuzhileixingzhuanhuan()
        print("----------------------------------------------------------------------")
        // MARK: 整数转浮点数
        zhengshuzhuanfudianshu()
        print("----------------------------------------------------------------------")
        // MARK: 类型别名
        leixingbieming()
        print("----------------------------------------------------------------------")
        // MARK: 布尔值
        buerzhi()
        print("----------------------------------------------------------------------")
        // MARK: 元组
        yuanzu()
    }
    
    func changliang(){
        let 你好 = "hello world"
        print(你好);
    }
    
    func bianliang(){
        var friend = "pengyou"
        friend = "hello pengyou"
        print(friend)
    }
    
    func zhengshu(){
        let minValue = UInt8.min
        let maxValue = UInt8.max
        print(minValue)
        print(maxValue)
    }
    
    func fudianshu(){
        let a = 0.0012
        print(a)
        let b : Double = 0.0012
        let c : Float = 0.0012
        print(a)
        print(b)
        print(c)
    }
    
    func leixinganquan(){
        let life = 42
        let pi = 3.14
        print(life)
        print(pi)
    }
    
    func zimianliang(){
        let decimalInteger = 17
        let binaryInteger = 0b10001 // 二进制17
        let octalInteger = 0o21 // 八进制17
        let hexadecimalInteger = 0x11 // 十六进制17
        print(decimalInteger)
        print(decimalInteger)
        print(octalInteger)
        print(hexadecimalInteger)
    }
    
    func shuzhileixingzhuanhuan(){
        /*
        let cannotbenegative : UInt8 = -1 // 与类型不匹配，不能存储负值
        let mostBig : Int8 = Int8.max + 1 // 不能越界
        */
    }
    
    func zhengshuzhuanfudianshu(){
        let san = 3
        let floatNum = 0.14159
        let pi = Double(san) + floatNum
        print(pi)
    }
    
    func leixingbieming(){
        typealias myInt = UInt32
        print(myInt.min)
        print(myInt.max)
    }
    
    func buerzhi(){
        let orangeAre = true
        let delicious = false
        if orangeAre{
            print("orange area")
        }else{
            print("delicious")
        }
    }

    func yuanzu(){
        let http404Error = (404,"not Found")
        // 分解元组
        let(hehe,haha) = http404Error
        print("hehe is \(hehe)")
        print("haha is \(haha)")
        let(one,_) = http404Error
        print("one is \(one)")
    }
    
    func kexuanleixing(){
        let possibleNumber = "123"
        let convertedNumber = Int(possibleNumber)
    }
}

