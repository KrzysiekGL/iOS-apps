//func  getMilk(howManyMilkCartons : Int) {
//    print("go to the shops")
//    print("buy \(howManyMilkCartons) cartons of milk")
//    print("pay \(howManyMilkCartons)$")
//    print("come home")
//}
//
//getMilk(howManyMilkCartons: 4)
//getMilk(howManyMilkCartons: 1)
//getMilk(howManyMilkCartons: 12)
//getMilk(howManyMilkCartons: 0)


func  getMilk(howManyMilkCartons : Int, howMuchMoneyRobotWasGiven : Int) -> Int {
    print("go to the shops")
    print("buy \(howManyMilkCartons) cartons of milk")
    
    let priceToPay = howManyMilkCartons * 2
    
    print("pay \(priceToPay)$")
    print("come home")
    
    let change = howMuchMoneyRobotWasGiven - priceToPay
    
    return change
}

getMilk(howManyMilkCartons: 3, howMuchMoneyRobotWasGiven: 10)
