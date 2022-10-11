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
print(myCoffee.description) // 2 shot(s) hot americano

let yourCoffee: Latte = Latte(flavor: "green tea", shot: 3)
print(yourCoffee.description) //3 shot(s) green tea latte

print(coffee is Coffee) //true
print(coffee is Americano)//false
print(coffee is Latte)//false

print(myCoffee is Coffee)//true
print(yourCoffee is Coffee)//true

print(myCoffee is Latte)//false
print(yourCoffee is Latte)//true

//다운캐스팅
if let actingOne: Americano = coffee as? Americano {
    print("This is Americano")
} else {
    print(coffee.description)
}
