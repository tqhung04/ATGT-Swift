//
//  KQViewController.swift
//  ATGT
//
//  Created by Vu Duc Chung on 08/11/2017.
//  Copyright © 2017 HidolPla. All rights reserved.
//

import UIKit

struct result {
    let correct: Int!
    let incorrect: Int!
    let kq: String!
}

class KQViewController: UIViewController,
UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var myTableView: UITableView!
    
    var arrCellID = ["Cell1", "Cell2", "Cell3", "Cell4"]
    var kq = result(correct: 17, incorrect: 3, kq: "Đỗ")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // result mockup
        
        // Do any additional setup after loading the view.
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
        myTableView.delegate = self
        myTableView.dataSource = self
        myTableView.separatorStyle = .none
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) ->
        Int {
            return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection
        section: Int) -> Int {
        return 4
    }
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: arrCellID[indexPath.row], for: indexPath as IndexPath)
        
        switch indexPath.row {
        case 0:
            cell.textLabel?.text = "Kết quả: Đỗ"
        case 1:
            cell.textLabel?.text = "Số câu đúng: \(kq.correct!)"
        case 2:
            cell.textLabel?.text = "Số câu sai: \(kq.incorrect!)"
        default:
            cell.textLabel?.text = ""
        }

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
