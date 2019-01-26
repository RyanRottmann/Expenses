//
//  TableViewViewController.swift
//  Expenses
//
//  Created by Ryan Rottmann on 1/25/19.
//  Copyright © 2019 Ryan Rottmann. All rights reserved.
//

import UIKit

class TableViewViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var expenseTableView: UITableView!

    
    let list1 = ["Dinner", "Office Supplies", "Uber", "Coffee"]
    let list2 = ["32.50", "59.34", "16.23", "3.95"]
    let list3 = ["June 1, 2018 18:30", "May 30, 2018 12:17", "May 30, 2018 11:43", "May 29, 2018 8:45"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM d, yyy hh:mm"
        
        
        /*
        struct Expense {
            var title = String
            var amount = Double
            var expenseDate = Date
        }
        
        let expenseArray : [Expense] = [Expense(title: "Dinner", amount: 32.50, date: "June 1, 2018 18:30")]
        */
        // Do any additional setup after loading the view.
    }
    class ExpensesTableViewCell : UITableViewCell{
        @IBOutlet weak var label1: UILabel!
        @IBOutlet weak var label2: UILabel!
        @IBOutlet weak var label3: UILabel!
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return(list1.count)
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {/*
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default,   reuseIdentifier: "expenseCell")
        cell.textLabel?.text = list1[indexPath.row]
        */
    let cell = tableView.dequeueReusableCell(withIdentifier: "expenseCell", for: indexPath)
        as! ExpensesTableViewCell
    
        cell.textLabel?.text = "hello"
 
       // cell.label1?.text = "1"//list1[indexPath.row]
        //cell.label2?.text = "2"//list2[indexPath.row]
        //cell.label3?.text = "3"//list3[indexPath.row]
        
        return (cell)
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 75.0;
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


}
