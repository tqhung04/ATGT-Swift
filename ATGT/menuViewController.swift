//
//  menuViewController.swift
//  ATGT
//
//  Created by Vu Duc Chung on 06/11/2017.
//  Copyright © 2017 HidolPla. All rights reserved.
//

import UIKit

class menuViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var arrCellID:[String] = ["Menu1","Menu2","Menu3","Menu4","Menu4","Menu5", "Menu6"]
    
    @IBOutlet weak var menuTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
        return arrCellID.count
    }
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: arrCellID[indexPath.row], for: indexPath as IndexPath)
        
        cell.textLabel?.text = arrCellID[indexPath.row]
        
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
