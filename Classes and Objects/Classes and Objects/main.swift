//
//  main.swift
//  Classes and Objects
//
//  Created by Krzysztof Szczerbowski on 03/09/2018.
//  Copyright © 2018 Krzysztof Szczerbowski. All rights reserved.
//

import Foundation

let mySelfDrivingCar = SelfDrivingCar(customerChosenColour: "Yellow")

print(mySelfDrivingCar.colour)
mySelfDrivingCar.destination = "1 Hacker way"
mySelfDrivingCar.drive()
