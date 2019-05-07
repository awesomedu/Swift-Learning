//
//  TDView.swift
//  BibaoSrollView
//
//  Created by mac on 2019/5/6.
//  Copyright © 2019年 mac. All rights reserved.
//

import UIKit

class TDView: UIView {
    var myclosure:(_ _view:TDView)->Void
    
    
    init(frame: CGRect,clickClosure:@escaping (_ view:TDView)->Void) {
        myclosure = clickClosure
        super.init(frame: frame)
        setUpView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpView() -> Void {
        let view = UIView(frame: bounds)
        view.backgroundColor = UIColor.brown
        addSubview(view)
        
        let btn = UIButton(frame: CGRect(x: 80, y: 15, width: view.bounds.width - 160, height: view.bounds.height - 30))
        btn.backgroundColor = UIColor.blue
        btn.setTitle("按钮", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        view.addSubview(btn)
        btn.addTarget(self, action: #selector(click), for: .touchUpInside)
    }
    
    
    @objc func click(){
        myclosure(self)
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
