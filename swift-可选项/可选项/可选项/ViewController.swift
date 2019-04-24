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

    
    

}

