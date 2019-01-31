//
//  WelcomeViewController.swift
//  Flash Chat
//
//  This is the welcome view controller - the first thign the user sees
//

import UIKit
import Firebase
import GoogleSignIn
import SVProgressHUD



class WelcomeViewController: UIViewController, GIDSignInUIDelegate, GIDSignInDelegate {
    
    
    @IBOutlet weak var signInGoogleButton: UIButton!
    
    @IBAction func signInGooglePressed(_ sender: Any) {
        signInGoogleButton.isEnabled = false
        signInGoogleButton.alpha = 0.5
        SVProgressHUD.show()
        
        GIDSignIn.sharedInstance().signIn()
    }
    
    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error?) {
        
        if error != nil {
            print("Faild to log into Google")
            return
        }
        else {
            print("Successfully logged into Google", user)
            
            //sign into firebase database
            guard let idToken = user.authentication.idToken else {return}
            guard let accessToken = user.authentication.accessToken else {return}
            let credentials = GoogleAuthProvider.credential(withIDToken: idToken, accessToken: accessToken)
            
            Auth.auth().signInAndRetrieveData(with: credentials) { (authResult, error) in
                if error != nil {
                    print("Faild to sign into firebase with Google: ", error!)
                    
                    SVProgressHUD.dismiss()
                    self.signInGoogleButton.isEnabled = true
                    self.signInGoogleButton.alpha = 1
                    
                    return
                }
                else {
                    print("Logged into firebase with Google", user.userID)
                    
                    self.performSegue(withIdentifier: "goToChat", sender: self)
                    
                    SVProgressHUD.dismiss()
                    self.signInGoogleButton.isEnabled = true
                    self.signInGoogleButton.alpha = 1
                }
            }
        }
        
    }
    
    func application(_ application: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any])
        -> Bool {
            return GIDSignIn.sharedInstance().handle(url,
                                                     sourceApplication:options[UIApplicationOpenURLOptionsKey.sourceApplication] as? String,
                                                     annotation: [:])
    }
    

   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //adding google sign in button
        
        //GIDSignInDelegate
        GIDSignIn.sharedInstance().clientID = FirebaseApp.app()?.options.clientID
        GIDSignIn.sharedInstance().delegate = self
        
        //GIDSignInUIDelegate
        GIDSignIn.sharedInstance().uiDelegate = self

            
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
//    //Sign in with Google
//    @IBAction func googleButtonPressed(_ sender: Any) {
//        GIDSignIn.sharedInstance().signIn()
//        SVProgressHUD.show()
//    }
    
}
