//
//  AddTransactionViewController.swift
//  MoneyGainer
//
//  Created by mac on 9/13/16.
//  Copyright © 2016 VietAnh. All rights reserved.
//

import UIKit

class AddTransactionViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.registerNib(UINib(nibName: "NormalTransactionTableViewCell", bundle: NSBundle.mainBundle()), forCellReuseIdentifier: "NormalTransactionTableViewCell")
        self.tableView.registerNib(UINib(nibName: "AmountTransactionTableViewCell", bundle: NSBundle.mainBundle()), forCellReuseIdentifier: "AmountTransactionTableViewCell")
        self.tableView.registerNib(UINib(nibName: "CategoryTableViewCell", bundle: NSBundle.mainBundle()), forCellReuseIdentifier: "CategoryTableViewCell")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Action
    @IBAction func clickCancelButton(sender: AnyObject) {
        self.navigationController?.popViewControllerAnimated(true)
    }
    
}

extension AddTransactionViewController : UITableViewDelegate,UITableViewDataSource {
    // datasource
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 30
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 5
        default:
            return 0
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            switch indexPath.row {
            case 0:
                return cellAmountTransaction(tableView)
            case 1:
                return cellCategoryTransaction(tableView)
            default:
                return cellNormalTransaction(tableView)
            }
        default:
            return cellNormalTransaction(tableView)
        }
    }
    
    func cellNormalTransaction(tableView:UITableView) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("NormalTransactionTableViewCell") as! NormalTransactionTableViewCell
        return cell
    }
    
    func cellAmountTransaction(tableView:UITableView) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("AmountTransactionTableViewCell") as! AmountTransactionTableViewCell
        return cell
    }
    
    func cellCategoryTransaction(tableView:UITableView) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CategoryTableViewCell") as! CategoryTableViewCell
        return cell
    }
}