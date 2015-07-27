var countries = ["USA", "Canada", "Spain", "Brazil", "Italy"]
for countryName in countries {
    println(countryName)
}

for (countryIndex, countryNames) in enumerate(countries){
    println("\(countryNames) is item number \(countryIndex) in my array")
}

var nameAge = [String: Int]()
println(nameAge)
nameAge["handy"] = 28
println(nameAge)
nameAge = [:]
println(nameAge)


var airport = ["YUL": "Montreal", "BWI": "Baltimore"]
for keyName in airport.keys {
 println("\(keyName) is an airport code")
}

for valueName in airport.values {
 println("\(valueName) is the name of an airport ")
}