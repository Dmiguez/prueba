//
//  FinalLoginViewController.swift
//  Nightmares
//
//  Created by Carlos De diego on 17/1/17.
//  Copyright © 2017 quality. All rights reserved.
//

/*
 * Vista Login:
 * Importante Mover el boton de atras debajo de el de entrar (El resto está bien)
 * Funcion Shake (): Es una animación que agita el textfield asociado (RECOMIENDO USARLO PARA VERIFICACION DE USUARIO Y CONTRASEÑA SI ALGUNO ESTÁ MAL)
 * Al LÍO!!
 */




import UIKit

class FinalLoginViewController: UIViewController {

    @IBOutlet weak var backButton: UIButton! //Boton Atras
    @IBOutlet weak var aliasTextField: UITextField! // Text Field del Alias
    @IBOutlet weak var passwordTextField: UITextField! // Text Field de la Pass
    @IBOutlet weak var entryButton: UIButton!   // Boton de Entrar
    @IBOutlet weak var backgroundIMG: UIImageView!  //Imagen de fondo
    @IBOutlet weak var agujeroRodaPie: UIImageView! //Imagen del Agujero
    @IBOutlet weak var rozaPie: UIImageView!    //Imagen del rodapie
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Carga en el aliasTextField y en el passwordTextField un mensaje que se quita al escribir
        aliasTextField.attributedPlaceholder = NSAttributedString(string: "Introduce Alias", attributes: [NSForegroundColorAttributeName: UIColor.grayColor()])
        passwordTextField.attributedPlaceholder = NSAttributedString(string: "Introduce Contraseña", attributes: [NSForegroundColorAttributeName: UIColor.grayColor()])
        
       // shake()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /**
     
     goLoggin: prepares by a press action the process to go inside the app when your information is already correct.
     
     ONLY USEFUL IN THE USER CASE.
     
     */
    
    @IBAction func goLoggin() //Vuelve al Login
    {
        let mainStoryBoard = UIStoryboard (name: "Main", bundle: NSBundle.mainBundle())
        let vc :TabBarController = mainStoryBoard.instantiateViewControllerWithIdentifier("TabBarController") as! TabBarController
        //let modalStyle = UIModalTransitionStyle.PartialCurl
        //vc.modalTransitionStyle = modalStyle
        self.presentViewController(vc, animated: true, completion: nil)
    }
    
    @IBAction func goRegister() //Va al Registrarse
    {
        let mainStoryBoard = UIStoryboard (name: "Main", bundle: NSBundle.mainBundle())
        let vc :RegisterViewController = mainStoryBoard.instantiateViewControllerWithIdentifier("RegisterViewController") as! RegisterViewController
        //let modalStyle = UIModalTransitionStyle.PartialCurl
        //vc.modalTransitionStyle = modalStyle
        self.presentViewController(vc, animated: true, completion: nil)
    }
    
    //If anything it's wrong shakes the textField
    
    /*func shake()
    {
        let animation = CABasicAnimation(keyPath: "wrong")
        animation.duration = 0.1
        animation.repeatCount = 5
        animation.autoreverses = true
        animation.fromValue = NSValue(cgPoint: CGPoint(x: self.center.x - 4, y: self.center.y))
        animation.toValue = NSValue(cgPoint: CGPoint(x: self.center.x + 4, y: self.center.y))
        
        self.layer.add(animation, forKey: "wrong")
    }*/

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    
    @IBAction func dismissVC() //Vuelve al LoginviewController
    {
        
        
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }
}
