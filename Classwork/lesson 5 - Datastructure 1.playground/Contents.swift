class car {
    
    var wheels: Int
    var doors: Int
    var name: String
    
    // initializer method (aka: initializer function)
    init() {
        wheels = 4
        doors = 4
        name = "kia"
    }
}

var myCar = car()

println(myCar.wheels)
println(myCar.name)

myCar.name = "BMW"
println(myCar.name)


