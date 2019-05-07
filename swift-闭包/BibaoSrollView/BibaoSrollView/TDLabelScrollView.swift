//
//  TDLabelScrollView.swift
//  BibaoSrollView
//
//  Created by mac on 2019/5/6.
//  Copyright © 2019年 mac. All rights reserved.
//

import UIKit

class TDLabelScrollView: UIScrollView {
    init(frame:CGRect,numberOfLabel:()->Int,labelOfIndex:(Int)->UILabel) {
        super.init(frame: frame)
        backgroundColor = UIColor.cyan
        let count = numberOfLabel()
        let margin : CGFloat = 9
        var x = margin
        
        for i in 0..<count{
            let label = labelOfIndex(i)
            label.frame = CGRect(x: x, y: 0, width: label.bounds.width, height: frame.height)
            
            addSubview(label)
            
            x += label.bounds.width
        }
        
        contentSize = CGSize(width:x + margin, height: frame.height)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
