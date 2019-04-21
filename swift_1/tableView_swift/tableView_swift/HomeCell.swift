//
//  HomeCell.swift
//  tableView_swift
//
//  Created by mac on 2019/4/21.
//  Copyright © 2019年 mac. All rights reserved.
//

import UIKit

class HomeCell: UITableViewCell {
    var label1 : UILabel?
    var label2 : UILabel?
    var label3 : UILabel?
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUpUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}

extension HomeCell{
    func setUpUI(){
        self.label1 = UILabel()
        self.label2 = UILabel()
        self.label3 = UILabel()
        self.label1?.backgroundColor = UIColor.red
        self.label2?.backgroundColor = UIColor.cyan
        self.label3?.backgroundColor = UIColor.brown
        self.label1?.frame = CGRect(x: 0, y: 10, width: 100, height: 25);
        self.label2?.frame = CGRect(x: 80, y: 10, width: 100, height: 25);
        self.label3?.frame = CGRect(x: 160, y: 10, width: 100, height: 25);
    
        addSubview(self.label1!)
        addSubview(self.label2!)
        addSubview(self.label3!)
    }
}
