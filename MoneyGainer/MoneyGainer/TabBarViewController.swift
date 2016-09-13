//
//  TabBarViewController.swift
//  MoneyGainer
//
//  Created by mac on 9/12/16.
//  Copyright © 2016 VietAnh. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {

    var currentViewController: UIViewController?
    @IBOutlet weak var placeHolderView: UIView!
    @IBOutlet var tabBarButtons: [UIButton]!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if(tabBarButtons.count > 0) {            performSegueWithIdentifier("TransactionsVCIdentifier", sender: tabBarButtons[0])
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func shouldAutorotate() -> Bool {
        return true
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let availableIdentifiers = ["TransactionsVCIdentifier", "ReportVCIdentifier"]
        
        if(availableIdentifiers.contains(segue.identifier!)) {
            
            for btn in tabBarButtons {
                btn.selected = false
            }
            
            let senderBtn = sender as! UIButton
            senderBtn.selected = true
            
        }
    }
}
