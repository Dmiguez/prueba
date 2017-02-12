//
//  InfoToolsController.swift
//  Nightmares
//
//  Created by alumnos on 20/1/17.
//  Copyright © 2017 quality. All rights reserved.
//

/*
 * TOOLS:
 * Aquí viene la información relacionada con el cambio entre ventanas es decir el Tocho Potente de Codigo Necesario para que el Swipe Funcione (No Hay que tocar Nada Así que lo dejo sin comentar)
 * Al LÍO!!
 */

import Foundation
import UIKit
import SpriteKit


    
func animateToTab(toIndex: Int, onTabBar: UITabBarController, se: UIViewController) {
    let tabViewControllers = onTabBar.viewControllers!
    let fromView = onTabBar.selectedViewController?.view
    let toView = onTabBar.viewControllers?[toIndex].view
    let fromIndex = tabViewControllers.indexOf(onTabBar.selectedViewController!)
    
    guard fromIndex != toIndex else {return}
    
    // Add the toView to the tab bar view
    fromView?.superview!.addSubview(toView!)
    
    // Position toView off screen (to the left/right of fromView)
    let screenWidth = UIScreen.mainScreen().bounds.size.width
    let scrollRight = toIndex > fromIndex!;
    let offset = (scrollRight ? screenWidth : -screenWidth)
    toView?.center = CGPoint(x: (fromView?.center.x)! + offset, y: (toView?.center.y)!)
    
    // Disable interaction during animation
    //Use .isUserInteractionEnabled in version 3.0
    
    se.view.userInteractionEnabled = false
    
    UIView.animateWithDuration(0.5, delay: 0.0, options: UIViewAnimationOptions.CurveEaseOut, animations: {
        
        // Slide the views by -offset
        fromView?.center = CGPoint(x: (fromView?.center.x)! - offset, y: (fromView?.center.y)!);
        toView?.center   = CGPoint(x: (toView?.center.x)! - offset, y: (toView?.center.y)!);
        
        }, completion: { finished in
        
        // Remove the old view from the tabbar view.
        fromView?.removeFromSuperview()
        onTabBar.selectedIndex = toIndex
        se.view.userInteractionEnabled = true
    })
    

    
}
