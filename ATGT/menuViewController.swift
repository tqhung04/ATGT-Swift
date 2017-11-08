//
//  menuViewController.swift
//  ATGT
//
//  Created by Vu Duc Chung on 06/11/2017.
//  Copyright © 2017 HidolPla. All rights reserved.
//

import UIKit

struct cellData {
    let cell: String!
    let text : String!
    let image: String!
}

class menuViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var arrOfCellData = [cellData]()

    @IBOutlet weak var menuTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrOfCellData = [cellData(cell : "Cell1", text : "Tra cứu luật", image : "search.png"),
                         cellData(cell : "Cell2", text : "Thi sát hạch", image : "exam.png"),
                         cellData(cell : "Cell3", text : "Cộng đồng", image : "community.png"),
                         cellData(cell : "Cell4", text : "Đăng nhập", image : "login.png"),
                         cellData(cell : "Cell5", text : "Liên hệ, góp ý", image : "mail.png")
        ]
        
        menuTable.delegate = self
        menuTable.dataSource = self
        menuTable.separatorStyle = .none
        // Do any additional setup after loading the view.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) ->
        Int {
            return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection
        section: Int) -> Int {
        return arrOfCellData.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: arrOfCellData[indexPath.row].cell, for: indexPath) as! TableViewCell
        
        // Configure the cell...
        cell.LMLabel.text = arrOfCellData[indexPath.row].text
        cell.LMImage.image = UIImage(named: arrOfCellData[indexPath.row].image)
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
