//
//  LoginViewController.swift
//  Nightmares
//
//  Created by alumnos on 12/1/17.
//  Copyright © 2017 quality. All rights reserved.
//

/*
 * Vista Inicial:
 * Importante Reservar espacio abajo a la derecha para boton cambiar de idioma
 * Al LÍO!!
 */

import UIKit

class LoginViewController: UIViewController {

    

    @IBOutlet weak var loginButton: UIButton! //Entrar Como usuario
    @IBOutlet weak var guestButton: UIButton! //Entrar Como invitado
    @IBOutlet weak var registerButton: UIButton! //Registrarse
    @IBOutlet weak var fondoLogin: UIView! //View (Negro)
  
    
    override func viewDidLoad()
    {
        UIStatusBarStyle.self.Default
        
        
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func gotrueLogin() //Función que nos lleva al login
    {

        let vc :FinalLoginViewController = storyboard!.instantiateViewControllerWithIdentifier("FinalLoginViewController") as! FinalLoginViewController
        let modalStyle = UIModalTransitionStyle.CrossDissolve //Es un tipo de animación (Verifica el modo en el que cambian de ventana a ventana y corrigelo de ser necesario)

        vc.modalTransitionStyle = modalStyle
        self.presentViewController(vc, animated: true, completion: nil)
    }
    
    
    @IBAction func gotoMain() //Funcion que nos lleva a la app sin registrarnos
    {
        let vc :TabBarController = storyboard!.instantiateViewControllerWithIdentifier("TabBarController") as! TabBarController
        let modalStyle = UIModalTransitionStyle.CrossDissolve //Es un tipo de animación (Verifica el modo en el que cambian de ventana a ventana y corrigelo de ser necesario)
        vc.modalTransitionStyle = modalStyle
        self.presentViewController(vc, animated: true, completion: nil)
    }
    
    @IBAction func goRegister() //Funcion que nos lleva al registrarse
    {

        let vc :RegisterViewController = storyboard!.instantiateViewControllerWithIdentifier("RegisterViewController") as! RegisterViewController
        let modalStyle = UIModalTransitionStyle.PartialCurl //Es un tipo de animación (Verifica el modo en el que cambian de ventana a ventana y corrigelo de ser necesario)
        vc.modalTransitionStyle = modalStyle
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

    
    func prepareforUnWind(unwindSegue: UIStoryboardSegue) //Permite al boton "desconectarse" de la app volver a esta ventana
    {
        
    }
    

}
