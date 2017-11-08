//
//  Menu2ViewController.swift
//  ATGT
//
//  Created by Vu Duc Chung on 06/11/2017.
//  Copyright © 2017 HidolPla. All rights reserved.
//

import UIKit

struct collectionData {
    let ID: String!
    let question : String!
    let answer : String!
    let image : String!
}

class TSHViewController: UIViewController,
        UICollectionViewDelegate,
        UICollectionViewDataSource {
    
    @IBOutlet weak var ScrollView: UIScrollView!
    var arrOfCollectionData = [collectionData]()

    @IBOutlet weak var btnMenu: UIBarButtonItem!
    @IBOutlet weak var myCollection: UICollectionView!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelCountDown: UILabel!
    var count = 900
    @IBOutlet weak var myImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // scroll view
        ScrollView.contentSize.height = 1000
        
        // data mockup
        arrOfCollectionData = [
            collectionData(
                ID : "1",
                question : "Thứ tự các xe đi như thế nào là đúng quy tắc giao thông?",
                answer : "search.png",
                image: "a2_1.jpg"),
            collectionData(
                ID : "2",
                question : "Xe nào được quyền đi trước?",
                answer : "search.png",
                image: "a2_2.jpg"),
            collectionData(
                ID : "3",
                question : "Các xe đi theo hướng mũi tên, xe nào vi phạm qui tắc giao thông?",
                answer : "search.png",
                image: "a2_1.jpg"),
            collectionData(
                ID : "4",
                question : "Thứ tự các xe đi như thế nào là đúng quy tắc giao thông?",
                answer : "search.png",
                image: "a2_2.jpg"),
            collectionData(
                ID : "5",
                question : "Theo tín hiệu đèn, xe nào được phép đi?",
                answer : "search.png",
                image: "a2_1.jpg"),
            collectionData(
                ID : "6",
                question : "Thứ tự các xe đi như thế nào là đúng quy tắc giao thông?",
                answer : "search.png",
                image: "a2_2.jpg"),
            collectionData(
                ID : "7",
                question : "Thứ tự các xe đi như thế nào là đúng quy tắc giao thông?",
                answer : "search.png",
                image: "a2_1.jpg"),
            collectionData(
                ID : "8",
                question : "Xe nào được quyền đi trước?",
                answer : "search.png",
                image: "a2_2.jpg"),
            collectionData(
                ID : "9",
                question : "Các xe đi theo hướng mũi tên, xe nào vi phạm qui tắc giao thông?",
                answer : "search.png",
                image: "a2_1.jpg"),
            collectionData(
                ID : "10",
                question : "Thứ tự các xe đi như thế nào là đúng quy tắc giao thông?",
                answer : "search.png",
                image: "a2_2.jpg"),
            collectionData(
                ID : "11",
                question : "Theo tín hiệu đèn, xe nào được phép đi?",
                answer : "search.png",
                image: "a2_1.jpg"),
            collectionData(
                ID : "12",
                question : "Thứ tự các xe đi như thế nào là đúng quy tắc giao thông?",
                answer : "search.png",
                image: "a2_2.jpg"),
            collectionData(
                ID : "13",
                question : "Thứ tự các xe đi như thế nào là đúng quy tắc giao thông?",
                answer : "search.png",
                image: "a2_1.jpg"),
            collectionData(
                ID : "14",
                question : "Xe nào được quyền đi trước?",
                answer : "search.png",
                image: "a2_2.jpg"),
            collectionData(
                ID : "15",
                question : "Các xe đi theo hướng mũi tên, xe nào vi phạm qui tắc giao thông?",
                answer : "search.png",
                image: "a2_1.jpg"),
            collectionData(
                ID : "16",
                question : "Thứ tự các xe đi như thế nào là đúng quy tắc giao thông?",
                answer : "search.png",
                image: "a2_2.jpg"),
            collectionData(
                ID : "17",
                question : "Theo tín hiệu đèn, xe nào được phép đi?",
                answer : "search.png",
                image: "a2_1.jpg"),
            collectionData(
                ID : "18",
                question : "Thứ tự các xe đi như thế nào là đúng quy tắc giao thông?",
                answer : "search.png",
                image: "a2_2.jpg"),
            collectionData(
                ID : "19",
                question : "Theo tín hiệu đèn, xe nào được phép đi?",
                answer : "search.png",
                image: "a2_1.jpg"),
            collectionData(
                ID : "20",
                question : "Thứ tự các xe đi như thế nào là đúng quy tắc giao thông?",
                answer : "search.png",
                image: "a2_2.jpg"),
        ]
        
        // set default label
        labelName.text = arrOfCollectionData[0].question
        
        // collection
        myCollection.dataSource = self
        myCollection.delegate = self
        
        btnMenu.target = self.revealViewController()
        btnMenu.action = Selector("revealToggle:")
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        // Do any additional setup after loading the view.
        
        // Count down
        var timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.update), userInfo: nil, repeats: true)
        
    }
    
    @objc func update() {
        if(count > 0) {
            let h = count / 60
            let s = count % 60
            labelCountDown.text = "\(h):\(s)";
            count-=1
        }
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrOfCollectionData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        
        cell.myLabel.text = arrOfCollectionData[indexPath.row].ID
        
        // Set color for selected cell
        if(indexPath.row == 0) { //for first cell in the collection
            cell.backgroundColor = UIColor.gray
        } else {
            cell.backgroundColor = UIColor.white
        }
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let nameQ : String!
        nameQ = "Câu \(arrOfCollectionData[indexPath.row].ID!): \(arrOfCollectionData[indexPath.row].question!)"
        labelName.text = nameQ
        
        if(indexPath.row % 2 == 0) {
            myImage.image = UIImage(named: arrOfCollectionData[indexPath.row].image)
        } else {
            myImage.image = UIImage(named: arrOfCollectionData[indexPath.row].image)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
