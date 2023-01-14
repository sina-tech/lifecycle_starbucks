//
//  ViewController_3.swift
//  assignment_week2_starbucks
//
//  Created by 황신아 on 2022/12/30.
//

import Foundation
import UIKit




class ViewController_3: UIViewController{
    
    @IBOutlet weak var MyTableView: UITableView!
    
    @IBAction func searchButton(_ sender: Any) {
        // 다른 뷰 컨트롤러로 이동.
            let ViewControllerSearch = self.storyboard?.instantiateViewController(withIdentifier: "ViewControllerSearch") as! ViewControllerSearch
            
        ViewControllerSearch.modalPresentationStyle = .fullScreen
            
            self.present(ViewControllerSearch, animated: true ,completion: nil)
    }
    let imageArray = ["o1.jpg","o2.jpg","o3.jpg","o4.jpg","o5.jpg","o6.jpg","o7.jpg","o8.jpg","o9.jpg","o10.jpg","o11.jpg","o12.jpg","o13.jpg","o14.jpg","o15.jpg","o16.jpg"]
    let uilabel1Array = ["NEW","추천","리저브 에스프레소","리저브 드립","리프레셔","콜드 브루","블론드","에스프레소","디카페인 커피","프라푸치노","블렌디드","피지오","티바나","브루드 커피","아포가토/기타","병음료"]
    let uilabel2Arrray = ["","Recommend","Reserve Espresso","Reserve Drip","Starbucks Refreshers","Cole Brew","Blonde Coffee","Espresso","Decaf Coffee","Frappuccino","Blended","Starbucks Fizzio","Teavana","Brewed Coffee","Others","RTD"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
         
    }




}
 
// UITableViewDelegate : 테이블 뷰에 대한 설정
extension  ViewController_3: UITableViewDelegate{
    
}


// UITableViewDataSource : 소스를 집어넣는 것
extension ViewController_3: UITableViewDataSource{
    
    // numberOfRowsInSection : 테이블 뷰 셀의 개수
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.imageArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = MyTableView.dequeueReusableCell(withIdentifier: "MyTableViewCell", for: indexPath) as! MyTableViewCell
        
        cell.uiimageview.image = UIImage(named: imageArray[indexPath.row])
        cell.uilabel1.text=uilabel1Array[indexPath.row]
        cell.uilabel2.text=uilabel2Arrray[indexPath.row]
        return cell
    }
    

}
