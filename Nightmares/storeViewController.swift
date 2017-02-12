//
//  ViewController.swift
//  Nightmares
//
//  Created by alumnos on 12/1/17.
//  Copyright © 2017 quality. All rights reserved.
//

import UIKit
import PopupDialog

class storeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!

    @IBOutlet weak var backgroundIMG: UIImageView!//Imagen de Fondo
    @IBOutlet weak var viewName: UIView!//View que contiene al Label
    @IBOutlet weak var titleName: UILabel!//Label
    //segmented control en la tienda
    @IBOutlet weak var higherSelector: UISegmentedControl!
    
//    let reuseIdentifer = "cell"
    var items = [""]
    var dicAmmo = ammo
    var dicSkins = skins
    
    var sections:Int = ammo.count
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        higherSelector.setTitle("Ammo", forSegmentAtIndex: 0)
        higherSelector.setTitle("Skins", forSegmentAtIndex: 1)
        collectionView.backgroundColor = UIColor.clearColor()
        collectionView.reloadData()
        
        items = dicAmmo
        
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func controladorSlides(sender: UISwipeGestureRecognizer)
    {
        if(sender.direction == .Left)//Al desplazar el Dedo de derecha a izquierda
        {
            tabBarController?.selectedIndex = 1
            animateToTab(2, onTabBar: tabBarController!, se: self)
        }
        else if(sender.direction == .Right)//Al desplazar el dedo de izquierda a derecha
        {
            
            tabBarController?.selectedIndex = 1
            animateToTab(0, onTabBar: tabBarController!, se: self)
        }
        
    }
    @IBAction func segmentedAmmoSkins(sender: AnyObject) {
        switch higherSelector.selectedSegmentIndex{
            
        case 0:
            sections = ammo.count
            items = dicAmmo
            print("entra1")
            collectionView.reloadData()
            
            
            
        case 1:
            sections = skins.count
            items = dicSkins
            print("entra2")
            collectionView.reloadData()
            
            
        default:
            break
            
        }
        
        
        
    }
    

    
    
//     func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 1
//    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return sections
        
    }
    
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell{
        
        
//         if (indexPath.row % 2 != 0){
            let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! storeCollectionViewCell
        cell.layer.cornerRadius = CGFloat(20.0)
            cell.myLabel?.text = self.items[indexPath.row]
        
            
            return cell
//         }
//         else{
//            let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell2", forIndexPath: indexPath) as! storeCollectionViewCell
//            
//            cell.myLabel?.text = self.items[indexPath.row]
//            
//            
//            return cell
//
//        }
        

    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        print ("selected \(indexPath.item)")
        let title = "\(items[indexPath.item])"
        let message = "¿ Esta seguro de que lo quiere comprar ?"
        
        let popup = PopupDialog(title: title, message: message)
        let buttonOne = CancelButton(title: "CANCEL") {
            print("You canceled the car dialog.")
        }
        let buttonThree = DefaultButton(title: "BUY") {
            print("Ah, maybe next time :)")
        }
        popup.addButtons([buttonOne, buttonThree])
        self.presentViewController(popup, animated: true, completion: nil)
        
    }
    
    
    
    


}

