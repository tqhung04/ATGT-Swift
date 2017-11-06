//
//  Menu2ViewController.swift
//  ATGT
//
//  Created by Vu Duc Chung on 06/11/2017.
//  Copyright © 2017 HidolPla. All rights reserved.
//

import UIKit

class TSHViewController: UIViewController,
        UICollectionViewDelegate,
        UICollectionViewDataSource {

    @IBOutlet weak var btnMenu: UIBarButtonItem!
    @IBOutlet weak var myCollection: UICollectionView!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelCountDown: UILabel!
    var count = 900
    @IBOutlet weak var myImage: UIImageView!
    var arrNumber:[String] = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"]
    var arrImg:[String] = ["a2_1.jpg", "a2_2.jpg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        
        cell.myLabel.text = arrNumber[indexPath.row]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        labelName.text = "Câu \(arrNumber[indexPath.row])"
        
        if(indexPath.row % 2 == 0) {
            myImage.image = UIImage(named: arrImg[0])
        } else {
            myImage.image = UIImage(named: arrImg[1])
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
