class Coffee {
    let name: String
    let shot: Int
    
    var description: String {
        return "\(shot) shot(s) \(name)"
    }
    init(shot: Int) {
        self.shot = shot
        self.name = "coffee"
    }
}
class Latte: Coffee {
    var flavor: String
    
    override var description: String {
        return "\(shot) shot(s) \(flavor) latte"
    }
    init(flavor: String, shot: Int){
        self.flavor = flavor
        super.init(shot: shot)
    }
}
class Americano: Coffee {
    let iced: Bool
    
    override var description: String {
        return "\(shot) shot(s) \(iced ? "iced" : "hot") americano"
    }
    init(shot: Int, iced: Bool){
        self.iced = iced
        super.init(shot: shot)
    }
}

let coffee: Coffee = Coffee(shot: 1)
print(coffee.description) //1 shot(s) coffee

let myCoffee: Americano = Americano(shot: 2, iced: false)
