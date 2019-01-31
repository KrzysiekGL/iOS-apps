//
//  Car.swift
//  Classes and Objects
//
//  Created by Krzysztof Szczerbowski on 03/09/2018.
//  Copyright © 2018 Krzysztof Szczerbowski. All rights reserved.
//

import Foundation

enum CarType {
    case Sedan
    case Coupe
    case Hatchback
}

class Car {
    
    var colour = "Black"
    var numberOfSeats : Int = 5
    var typeOfCar : CarType = .Coupe
    
    init() {
    }
    
    convenience init(customerChosenColour : String) {
        self.init()
        colour = customerChosenColour
    }
    
    func drive() {
        print("car is moving")
    }
}
