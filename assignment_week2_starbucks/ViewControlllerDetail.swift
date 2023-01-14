//
//  ViewControlllerDetail.swift
//  assignment_week2_starbucks
//
//  Created by 황신아 on 2022/12/31.
//

import Foundation
import UIKit

class ViewControllerDetail: UIViewController {
    @IBOutlet weak var imageDetail: UIImageView!
    @IBOutlet weak var labelDetail: UILabel!
    @IBOutlet weak var labelDetail2: UILabel!
    @IBOutlet weak var labelDetail3: UILabel!
 
    var image1 : UIImage? = UIImage(named: "o1.jpg")
    var label1 : String? = "Default"
    var label2 : String? = "Default"
    var label3 : String? = "Default"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageDetail.image = UIImage(named: newImageArray[myindex])
        labelDetail.text = newUilabel1Array[myindex]
        labelDetail2.text = newUilabel2Array[myindex]
        labelDetail3.text = newUilabel3Array[myindex]
    }
    
}


