/**************country.swift*******/
protocol CountryDelegate {
    func negotiate()
}


class Country {
    var delegate: CountryDelegate?
    
    func performNegotiation() {
        if let delegate = delegate {
          delegate.negotiate()
        }
    }
}
/*********************/



/**************ambassador.swift*******/
//delegate
class Ambassador: CountryDelegate {
    func negotiate() {
        println("I shall negotiate")
    }
}
/*********************/

let usa = Country()
let devin = Ambassador()
usa.delegate = devin
usa.performNegotiation()

