//
//  RegisterViewController.swift
//  Nightmares
//
//  Created by Carlos De diego on 14/1/17.
//  Copyright © 2017 quality. All rights reserved.
//
/*
 * Vista Registrarse:
 * Importante Mover el boton de atras a la izquierda de el de crear cuenta (El resto está bien)
 * Funcion Shake (): Es una animación que agita el textfield asociado (RECOMIENDO USARLO PARA VERIFICACION DE USUARIO Y CONTRASEÑA SI ALGUNO ESTÁ MAL)
 * Al LÍO!!
 */

import UIKit

class RegisterViewController: UIViewController {



    @IBOutlet weak var fondo: UIImageView! //Imagen de Fondo
    @IBOutlet weak var aliasLabel: UILabel! //Label Alias
    @IBOutlet weak var mailLabel: UILabel! //Label Mail
    @IBOutlet weak var passLabel: UILabel!  //Label Pass
    @IBOutlet weak var repeatPassLabel: UILabel! //Label Repetir Pass
    @IBOutlet weak var aliasField: UITextField! //Text Field Alias
    @IBOutlet weak var mailField: UITextField! // Text Field Mail
    @IBOutlet weak var passField: UITextField! //Text field Pass
    @IBOutlet weak var repeatPassField: UITextField! //Text field Repetir Pass
    @IBOutlet weak var registerButton: UIButton! //Boton crear cuenta
    @IBOutlet weak var backButton: UIButton!//Boton atras
    @IBOutlet weak var profileImageView: UIImageView!//Imagen del usuario
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Cambia dentro del TextField asociado un texto de muestra por defecto
        aliasField.attributedPlaceholder = NSAttributedString(string: "Introduce Alias", attributes: [NSForegroundColorAttributeName: UIColor.grayColor()])
        mailField.attributedPlaceholder = NSAttributedString(string: "Introduce Email", attributes: [NSForegroundColorAttributeName: UIColor.grayColor()])
        passField.attributedPlaceholder = NSAttributedString(string: "Introduce Contraseña", attributes: [NSForegroundColorAttributeName: UIColor.grayColor()])
        repeatPassField.attributedPlaceholder = NSAttributedString(string: "Repita Contraseña", attributes: [NSForegroundColorAttributeName: UIColor.grayColor()])
        
        
        // Change the image form into a circle
        //To obtain an eye form change the image width to 240 & height to 128
        
        self.profileImageView.layer.cornerRadius = self.profileImageView.frame.size.width / 2
        self.profileImageView.clipsToBounds = true
        self.profileImageView.layer.borderColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1.0).CGColor
        self.profileImageView.layer.borderWidth = 2
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func gotoMain() //Entra a la app
    {
        let vc :TabBarController = storyboard!.instantiateViewControllerWithIdentifier("TabBarController") as! TabBarController
        //let modalStyle = UIModalTransitionStyle.PartialCurl
        //vc.modalTransitionStyle = modalStyle
        self.presentViewController(vc, animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func dismissVC2() //Vuelve al viewController anterior (Puede ser el login o el finalLogin)
    {
        
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }
}
