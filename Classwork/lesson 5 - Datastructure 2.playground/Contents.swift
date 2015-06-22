class Car {
    
    var wheels: Int
    var doors: Int
    var name: String
    
    // initializer method (aka: initializer function)
    init(wheels: Int, doors: Int, name: String) {
        self.wheels = wheels
        self.doors = doors
        self.name = name
        // self.name
        
    }
    //Normal Method
    func drive() -> Bool {
        return true
    }
}

let myCar = Car(wheels: 4, doors: 4, name: "BMW")
myCar.drive()


class Lamborghini: Car {
    var spoiler: Bool?
}

//object - when class come to life
let diablo = Lamborghini(wheels: 4, doors: 2, name: "Diablo")
diablo.spoiler = true



