//
//  HLGTViewController.swift
//  ATGT
//
//  Created by Vu Duc Chung on 06/11/2017.
//  Copyright © 2017 HidolPla. All rights reserved.
//

import UIKit

// Biển báo giao thông
struct BBGTData {
    let cell: String!
    let category : String!
    //let content : MTLStructType!
    let image : String!
}

class HLGTViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {
    
    var arrOfBBGT = [BBGTData]()
    
    @IBOutlet weak var BBGTTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Toggle Menu
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
        // Constructor
        BBGTTableView.delegate = self
        BBGTTableView.dataSource = self
        BBGTTableView.separatorStyle = .none
        
        // Data Mockup BBGT
        arrOfBBGT = [
            BBGTData(cell: "Cell1", category: "Biển báo cấm", image: "bbc.png"),
            BBGTData(cell: "Cell2", category: "Biển báo hiệu lệnh", image: "bbc.png"),
            BBGTData(cell: "Cell3", category: "Vạch đường kẻ phụ", image: "bbc.png"),
            BBGTData(cell: "Cell4", category: "Biển báo phụ", image: "bbc.png"),
            BBGTData(cell: "Cell5", category: "Biển báo cấm", image: "bbc.png"),
        ]
        
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) ->
        Int {
            return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection
        section: Int) -> Int {
        return arrOfBBGT.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        // Configure the cell...
        cell.textLabel?.text = arrOfBBGT[indexPath.row].category
        //cell/LMImage.image = UIImage(named: arrOfBBGT[indexPath.row].image)
        return cell
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
