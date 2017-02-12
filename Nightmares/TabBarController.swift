//
//  TabBarViewController.swift
//  Nightmares
//
//  Created by alumnos on 13/1/17.
//  Copyright © 2017 quality. All rights reserved.
//
/*
 * Controlador TAB BAR CONTROLLER:
 * Importante: No es necesario hacer nada aquí sin embargo creo que solo se podía desde aquí: Establecer que View controller es el primero en ser mostrado. 
 * Debes Conseguir que el Perfil sea el primer ViewController una vez se entra a la app
 * Al LÍO!!
 */

import UIKit


class TabBarController: UITabBarController {

  
    override func viewDidLoad() {

         super.viewDidLoad()
         //tabBarController?.selectedViewController(UITabBarController.viewControllers[0])
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tabBar(tabBar: UITabBar, didSelectItem item: UITabBarItem) { //Intento de establecer items animados entre viewcontrollers, IMPOSIBLE (Recomendable borrar este codigo)
        
        if (item.tag == 1)
        {
            //animateToTab(toIndex : 0, onTabBar: TabBarViewController!, se: self)
        }
        else if (item.tag == 2)
        {
            //animateToTab(toIndex : 0, onTabBar: TabBarViewController!, se: self)
        }
        else if (item.tag == 3)
        {
            //animateToTab(toIndex : 0, onTabBar: TabBarViewController!, se: self)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
