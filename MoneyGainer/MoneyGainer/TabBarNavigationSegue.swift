//
//  TabBarNavigationSegue.swift
//  MoneyGainer
//
//  Created by mac on 9/12/16.
//  Copyright © 2016 VietAnh. All rights reserved.
//

import UIKit

class TabBarNavigationSegue: UIStoryboardSegue {
    override func perform() {
        
        let tabBarController = self.sourceViewController as! TabBarViewController
        let destinationController = self.destinationViewController as UIViewController
        
        for view in tabBarController.placeHolderView.subviews as [UIView] {
            view.removeFromSuperview()
        }
        
        // Add view to placeholder view
        tabBarController.currentViewController = destinationController
        tabBarController.placeHolderView.addSubview(destinationController.view)
        
        // Set autoresizing
        tabBarController.placeHolderView.translatesAutoresizingMaskIntoConstraints = false
        destinationController.view.translatesAutoresizingMaskIntoConstraints = false
        
        let horizontalConstraint = NSLayoutConstraint.constraintsWithVisualFormat("H:|-0-[v1]-0-|", options: .AlignAllTop, metrics: nil, views: ["v1": destinationController.view])
        
        tabBarController.placeHolderView.addConstraints(horizontalConstraint)
        
        let verticalConstraint = NSLayoutConstraint.constraintsWithVisualFormat("V:|-0-[v1]-0-|", options: .AlignAllTop, metrics: nil, views: ["v1": destinationController.view])
        
        tabBarController.placeHolderView.addConstraints(verticalConstraint)
        
        tabBarController.placeHolderView.layoutIfNeeded()
        destinationController.didMoveToParentViewController(tabBarController)
        
    }
}
