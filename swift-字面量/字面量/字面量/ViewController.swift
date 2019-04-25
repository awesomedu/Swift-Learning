//
//  ViewController.swift
//  字面量
//
//  Created by mac on 2019/4/25.
//  Copyright © 2019年 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        zhengxingzimianliang()
        fudianxingzimianliang()
        zifuchuanzimianliang()
    }

    func zhengxingzimianliang(){
        let decimalInteger = 17           // 17 - 十进制表示
        let binaryInteger = 0b10001       // 17 - 二进制表示
        let octalInteger = 0o21           // 17 - 八进制表示
        let hexadecimalInteger = 0x11   // 17 - 十六进制表示
        print("整型字面量 a = \(decimalInteger) b = \(binaryInteger) c = \(octalInteger) d = \(hexadecimalInteger)")
    }
    
    func fudianxingzimianliang(){
        let decimalDouble = 12.1875       //十进制浮点型字面量
        let exponentDouble = 1.21875e1    //十进制浮点型字面量
        let hexadecimalDouble = 0xC.3p0   //十六进制浮点型字面量
        print("浮点型字面量 a = \(decimalDouble) b = \(exponentDouble) c = \(hexadecimalDouble)")
    }
    
    func zifuchuanzimianliang(){
        let string = "hello"
        print(string)
    }

}

