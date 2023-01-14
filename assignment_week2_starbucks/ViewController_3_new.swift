//
//  ViewController_3_new.swift
//  assignment_week2_starbucks
//
//  Created by 황신아 on 2022/12/31.
//

import Foundation

import UIKit


let newImageArray = ["oo1.jpg","oo2.jpg","oo3.jpg","oo4.jpg","oo5.jpg", "oo6.jpg", "oo7.jpg"]
let newUilabel1Array = ["토피 넛 라떼", "아이스 토피 넛 라떼", "오로라 캐모마일 릴렉서", "아이스 오로라 캐모마일 릴렉서", "스노우 바닐라 티 라떼", "아이스 스노우 바닐라 티 라떼", "돌체 스트로베리 라떼"]
let newUilabel2Array = ["Toffee Nut Latte", "Iced Toffee Nut Lattee","Aurora Chamomile Tea Relaxer","Iced Aurora Chamomile Tea Relaxer","Snow Vanilla Tea Latte","Iced Snow Vanilla Tea Latte", "Dolce Strawberry Milk"]
let newUilabel3Array = ["6,100원","6,100원","6,100원","6,100원","6,100원","6,100원","6,100원"]
var myindex=0

class ViewController_3_new: UIViewController{
    
    @IBOutlet weak var NewTableView: UITableView!
    
    @IBAction func searchButton(_ sender: Any) {
        // 다른 뷰 컨트롤러로 이동.
            let ViewControllerSearch = self.storyboard?.instantiateViewController(withIdentifier: "ViewControllerSearch") as! ViewControllerSearch
            
        ViewControllerSearch.modalPresentationStyle = .fullScreen
            
            self.present(ViewControllerSearch, animated: true ,completion: nil)
    }
    ///
    ///

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
         
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myindex = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
    }




}

// UITableViewDelegate : 테이블 뷰에 대한 설정
extension  ViewController_3_new: UITableViewDelegate{
   
}


// UITableViewDataSource : 소스를 집어넣는 것
extension ViewController_3_new: UITableViewDataSource{
   
   // numberOfRowsInSection : 테이블 뷰 셀의 개수
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return 7
   }
   
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell1 = NewTableView.dequeueReusableCell(withIdentifier: "NewTableViewCell", for: indexPath) as! NewTableViewCell
       
       cell1.newImage.image = UIImage(named: newImageArray[indexPath.row])
       cell1.newLabel1.text=newUilabel1Array[indexPath.row]
       cell1.newLabel2.text=newUilabel2Array[indexPath.row]
       cell1.newLabel3.text=newUilabel3Array[indexPath.row]
       return cell1
   }
   

}
