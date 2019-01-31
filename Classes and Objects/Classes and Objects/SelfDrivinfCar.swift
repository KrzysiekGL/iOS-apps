//
//  SelfDrivinfCar.swift
//  Classes and Objects
//
//  Created by Krzysztof Szczerbowski on 03/09/2018.
//  Copyright © 2018 Krzysztof Szczerbowski. All rights reserved.
//

import Foundation

class SelfDrivingCar : Car { //properties and methods inheritance
    
    var destination : String? //optional "?" - might contrain value or not
    
    override func drive() {
        super.drive() //superclass function of SelfDrivingCar class which is Car
        
//        if destination != nil {
//            print("to destination \(destination!)") //! means that "I know what I'm doing and there is no NIL value...
//        }                                           //! - force unwrapping
        
        //optional binding -- "Swifty" way -- without force unwrapping "!"
        if let userSetDestination = destination {           //looks the same as : if destination {...}
            print("driving towards \(userSetDestination)")
        }
        
    }
}
