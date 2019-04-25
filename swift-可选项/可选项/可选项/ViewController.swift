//
//  ViewController.swift
//  可选项
//
//  Created by mac on 2019/4/23.
//  Copyright © 2019年 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        option()
        plus()
        qiangzhijiexi()
        kexuanbangding()
    }
    
    func option(){
        let a: String?
        a = "optional"
        print(a ?? "hehe")
    }
    
    func plus(){
        let x: Optional = 10
        let y: Optional = 20
        print(x! + y!)
    }
    
    func guardfunc(){
        let oName:String? = "heheh"
        guard let name = oName else {
            print("else")
        }
    }
    
    func qiangzhijiexi(){
        var myString:String?
        myString = "hello,swift"
        if myString != nil{
            print(myString!)
        }else{
            print("myString = nil")
        }
    }
    
    func kexuanbangding(){
        var myString : String?
        // MARK 可选绑定
        // 1
        myString = nil
        // 2
        myString = "hhhhhhTD"
        
        if let constant = myString {
            print("this is \(constant)")
        }
    }

    
    

}

