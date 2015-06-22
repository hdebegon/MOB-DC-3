/*
    classes vs. structs

    classes: pass by reference
    structs: pass by copy
*/

class Car {
    var wheels: Int

    init(wheels: Int) {
        self.wheels = wheels
    }
}

struct Line {
    var length: Int
}

var myCar = Car(wheels: 4)
myCar.wheels = 10

var thomasCar = myCar
thomasCar.wheels = 6

myCar.wheels
thomasCar.wheels

var myLine = Line(length: 10)
myLine.length = 20


var firstCar = Car(wheels: 4)
var secondCar = Car(wheels: 8)

firstCar = secondCar
firstCar
firstCar.wheels = 10
firstCar
secondCar

