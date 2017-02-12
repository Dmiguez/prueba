//
//  SecondViewController.swift
//  Nightmares
//
//  Created by alumnos on 12/1/17.
//  Copyright © 2017 quality. All rights reserved.
//

import UIKit

class profileViewController: UIViewController {

    @IBOutlet weak var backGroundIMG: UIImageView!
    @IBOutlet var viewName: UIView!
    @IBOutlet weak var titleName: UILabel!
    @IBOutlet weak var higherSelector: UISegmentedControl!
    @IBOutlet weak var logOutButton: UIButton!
    @IBOutlet weak var aliasLabel: UILabel!
    @IBOutlet weak var mailLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var aliasTextField: UITextField!
    @IBOutlet weak var mailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var profileimage: UIImageView!
    @IBOutlet weak var unlockAlias: UIButton!
    @IBOutlet weak var unlockMail: UIButton!
    @IBOutlet weak var unlockPassword: UIButton!
    @IBOutlet weak var marcoIMGProfile: UIImageView!

    @IBOutlet weak var viewYOURINFO: UIView!
    
    override func viewDidLoad() {
        
        /*  IMPORTANTE:
        *----------------
        *  Para el ejemplo de clase Comenté estas lineas, porque eran innecesarias
        *  Hacen que la imagen  se vuelva circular (Como la que me pasó andrés ya era circular si hacía esto quedaba mal
        *  Para la versión final la imagen debe ser cuadrada y tener las mismas dimensiones que en el registro
        */
        
        /*self.profileimage.layer.cornerRadius = self.profileimage.frame.size.width / 2;
        self.profileimage.clipsToBounds = true;
        self.profileimage.layer.borderColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1.0).CGColor
        self.profileimage.layer.borderWidth = 2*/
        
        super.viewDidLoad()
        
        //Creo un texto que aparece y desaparece cuando comienzas a escribir encima
        
        aliasTextField.attributedPlaceholder = NSAttributedString(string: "Tu Alias", attributes: [NSForegroundColorAttributeName: UIColor.grayColor()])
        mailTextField.attributedPlaceholder = NSAttributedString(string: "Tu Email", attributes: [NSForegroundColorAttributeName: UIColor.grayColor()])
        passwordTextField.attributedPlaceholder = NSAttributedString(string: "Tu Contraseña", attributes: [NSForegroundColorAttributeName: UIColor.grayColor()])
        
        //Instancio los TextField en enabled.false para evitar que sean editables

        aliasTextField.enabled = false
        mailTextField.enabled = false
        passwordTextField.enabled = false
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func indexChanged(sender: UISegmentedControl) //Selector Superior (Activa y Desactiva Views que contienen info y botones...)
    {
        switch higherSelector.selectedSegmentIndex
            
        {
        case 0:
            
            viewYOURINFO.hidden = false
            aliasTextField.enabled = false
            mailTextField.enabled = false
            passwordTextField.enabled = false
            
        case 1:
            
            viewYOURINFO.hidden = true
            
            aliasTextField.enabled = false
            mailTextField.enabled = false
            passwordTextField.enabled = false

            
        case 2:
            
            viewYOURINFO.hidden = true
            
            aliasTextField.enabled = false
            mailTextField.enabled = false
            passwordTextField.enabled = false

            
        default:
            break
        }
    }
    
    @IBAction func UnlockAlias ()//Funcion que desbloquea los TextField y permite escribir en ellos (Editarlos)
    {
        if(unlockAlias.enabled == true)
        {
            aliasTextField.enabled = true
        }
        else
        {
             aliasTextField.enabled = false
        }
    }
    
    @IBAction func UnlockMail ()//Funcion que desbloquea los TextField y permite escribir en ellos (Editarlos)

    {
        if(unlockMail.enabled == true)
        {
             mailTextField.enabled = true
        }
        else
        {
             mailTextField.enabled = false
        }
    }
    
    @IBAction func UnlockPassword ()//Funcion que desbloquea los TextField y permite escribir en ellos (Editarlos)

    {
        if(unlockPassword.enabled == true)
        {
            passwordTextField.enabled = true
        }
        else
        {
            passwordTextField.enabled = false
        }
    }
    
    
    @IBAction func controladorSlides(sender: UISwipeGestureRecognizer) //Controla el movimiento entre Ventanas
    {
        if(sender.direction == .Left)//Al desplazar el Dedo de derecha a izquierda
        {
            tabBarController?.selectedIndex = 2
            animateToTab(3, onTabBar: tabBarController!, se: self)
        }
        else if(sender.direction == .Right)//Al desplazar el dedo de izquierda a derecha

        {
            
            tabBarController?.selectedIndex = 2
            animateToTab(1, onTabBar: tabBarController!, se: self)
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
