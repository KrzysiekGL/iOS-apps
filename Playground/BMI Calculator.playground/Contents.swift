func calculateBmi(mass : Float, height : Float) -> String {
    let bmi : Float = Float(mass / (height * height))
    
    var whatBmi : String!
    
    if (bmi > 25) {
        whatBmi = "Your BMI is \(bmi). You're overweight."
    }
    else if (bmi > 18.5 && bmi < 25) {
        whatBmi = "Your BMI is \(bmi). You're OK."
    }
    else if (bmi < 18.5) {
        whatBmi = "Your BMI is \(bmi). You're underweight."
    }
    
    return whatBmi
}

print(calculateBmi(mass: 67, height: 1.69))
