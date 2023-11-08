//
//  ViewController.swift
//  RamirezSnapchat
//
//  Created by Fabian Ramirez Reinoso on 07/11/23.
//

import UIKit
import FirebaseAuth
import GoogleSignIn

class iniciarSesionViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBAction func iniciarSesionTapped(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) {
                    (user, error) in
                    print("Intentando iniciar sesion")
                    if error != nil {
                        print("Se presento el siguiente error: \(error)")
                    } else {
                        print("Inicio de sesion exitoso")
                    }
                }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}


