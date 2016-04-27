//
//  CustomTableViewCell.swift
//  CustomTableViewCell
//
//  Created by 狩野 恭平 on 2016/04/23.
//  Copyright © 2016年 狩野 恭平. All rights reserved.
//

import Foundation
import UIKit

class CustomTableViewCell : UITableViewCell{
    static let identifer: String = "CustomTableViewCell"
    
    @IBOutlet weak var contentImage: UIImageView!
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var contentTitle: UILabel!
    
    static func getNib() -> UINib{
        return UINib(nibName: CustomTableViewCell.identifer, bundle: nil)
    }

    func setup(text: String, title: String){
        self.contentLabel?.text = text
        self.contentTitle?.text = text
    }
}
