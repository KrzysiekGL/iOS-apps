//
//  AppDelegate.swift
//  Flash Chat
//
//  The App Delegate listens for events from the system. 
//  It recieves application level messages like did the app finish launching or did it terminate etc. 
//

import UIKit
import Firebase
//import GoogleSignIn


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate/*, GIDSignInDelegate*/ {
    
//    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error?) {
//
//        if error != nil {
//            print("Faild to log into Google")
//            return
//        }
//        else {
//            print("Successfully logged into Google", user)
//
//            //sign into firebase database
//            guard let idToken = user.authentication.idToken else {return}
//            guard let accessToken = user.authentication.accessToken else {return}
//            let credentials = GoogleAuthProvider.credential(withIDToken: idToken, accessToken: accessToken)
//
//            Auth.auth().signInAndRetrieveData(with: credentials) { (authResult, error) in
//                if error != nil {
//                    print("Faild to sign into firebase with Google: ", error!)
//                    return
//                }
//                else {
//                    print("Logged into firebase with Google", user.userID)
//                }
//            }
//        }
//
//    }
//    
//    func application(_ application: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any])
//        -> Bool {
//            return GIDSignIn.sharedInstance().handle(url,
//                                                     sourceApplication:options[UIApplicationOpenURLOptionsKey.sourceApplication] as? String,
//                                                     annotation: [:])
//    }
    

    var window: UIWindow?
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        //TODO: Initialise and Configure your Firebase here:
        FirebaseApp.configure()

        //this can wipe whole database with "We've ... data" text
//        let myDatabase = Database.database().reference()
//        myDatabase.setValue("We've got data!")
        
        //google sign in
//        GIDSignIn.sharedInstance().clientID = FirebaseApp.app()?.options.clientID
//        GIDSignIn.sharedInstance().delegate = self
        
        return true
    }

    
    
    
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }

//MARK: - Uncomment this only once you've gotten to Step 14.
    /*
    
let APP_ID = "5H62DKM7JuG6kBBzVICydweQkSQTZD8vsFtoEEew"
let CLIENT_KEY = "UMkw6hwriImwSAEtwxlMbrJXtcccrTR6jdcRS9IN"
    
*/


}

