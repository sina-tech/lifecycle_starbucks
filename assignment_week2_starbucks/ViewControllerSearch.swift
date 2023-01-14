//
//  ViewControllerSearch.swift
//  assignment_week2_starbucks
//
//  Created by 황신아 on 2022/12/31.
//

import Foundation
import UIKit

class ViewControllerSearch: UIViewController {
    
    @IBAction func cancleButton(_ sender: Any) {
        dismiss(animated: false, completion: nil)
    }
    @IBOutlet weak var searchTextField: UITextField!
    
    @IBAction func textFieldAction(_ sender: Any) {
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //searchTextField.addleftimage(image: UIImage(named: "magnifyingglass.png")!)
    }
}


extension UITextField {
  func addLeftPadding() {
    let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: self.frame.height))
    self.leftView = paddingView
    self.leftViewMode = ViewMode.always
  }
    func addleftimage(image:UIImage) {
            let leftimage = UIImageView(frame: CGRect(x: 0, y: 0, width: 1, height: 1))
            leftimage.image = image
            self.leftView = leftimage
            self.leftViewMode = .always
        }
}
