//
//  GroupCellView.swift
//  StudyBuds
//
//  Created by Youssef Mikhail on 2019-01-13.
//  Copyright © 2019 Youssef Mikhail. All rights reserved.
//

import UIKit

class GroupCellView: UITableViewCell {
 
    var groupName : UILabel = UILabel()
    var location : UILabel = UILabel()
    var numberOfMembers : UILabel = UILabel()
    var distance : UILabel = UILabel()
    
    override init(style : UITableViewCell.CellStyle, reuseIdentifier : String?) {
        super.init(style : style, reuseIdentifier : reuseIdentifier)
        self.contentView.addSubview(groupName)
        self.contentView.addSubview(location)
        self.contentView.addSubview(distance)
        self.contentView.addSubview(numberOfMembers)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.contentView.addSubview(groupName)
        self.contentView.addSubview(location)
        self.contentView.addSubview(distance)
        self.contentView.addSubview(numberOfMembers)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.contentView.addSubview(groupName)
        self.contentView.addSubview(location)
        self.contentView.addSubview(distance)
        self.contentView.addSubview(numberOfMembers)
        // Initialization code
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        groupName = UILabel(frame: CGRect(x: 10, y: 10, width: 200, height: 50))
        groupName.text = "test"
        

        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
