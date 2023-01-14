//
//  NewTableViewCell.swift
//  assignment_week2_starbucks
//
//  Created by 황신아 on 2022/12/31.
//

import Foundation
import UIKit

class NewTableViewCell: UITableViewCell{
    
    @IBOutlet weak var newLabel1: UILabel!
    
    @IBOutlet weak var newLabel2: UILabel!
    @IBOutlet weak var newLabel3: UILabel!

    @IBOutlet weak var newImage: UIImageView!
    
   
    
    // cell이 랜더링될때(셀이 화면에 그려질때. 랜더링= 그리는것)
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
}
