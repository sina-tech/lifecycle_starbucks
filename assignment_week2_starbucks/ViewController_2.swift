//
//  ViewController_2.swift
//  assignment_week2_starbucks
//
//  Created by 황신아 on 2022/12/30.
//

import Foundation
import UIKit

class ViewController_2: UIViewController {

    // uiview 연결
    
    @IBOutlet weak var uiview: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 그림자 세팅
        setCircleViewShadow()
    }
    
    private func setCircleViewShadow() {
        uiview.layer.masksToBounds = false
        uiview.layer.shadowColor = UIColor.black.cgColor //그림자 색깔 : 검정색
        uiview.layer.shadowOpacity = 0.4 // 그림자 투명도 : 0~1, 0에 가까울 수록 투명해짐
        uiview.layer.shadowOffset = CGSize(width: 0, height: 5) // 그림자 위치 이동 : 밑으로 5 point 이동
        uiview.layer.shadowRadius = 5 // 그림자 굵기
    }

}

