//
//  mainViewController.swift
//  ATGT
//
//  Created by Vu Duc Chung on 06/11/2017.
//  Copyright © 2017 HidolPla. All rights reserved.
//

import UIKit

class mainViewController: UIViewController,
    UITableViewDelegate, UITableViewDataSource {
    
    var arrCellID:[String] = ["Biển báo giao thông", "Mô tô, xe gắn máy", "Ô tô", "Vi phạm khác", "Trường hợp đặc biệt"]
    
    @IBOutlet weak var btnMenu: UIBarButtonItem!
    @IBOutlet weak var menuHLGT: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnMenu.target = self.revealViewController()
        btnMenu.action = Selector("revealToggle:")
    self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
        menuHLGT.delegate = self
        menuHLGT.dataSource = self
        menuHLGT.separatorStyle = .none
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
