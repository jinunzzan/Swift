
// 클래스, 구조체, 열거형의 기본적인 형태의 이니셜라이저
class SomeClass {
    init() {
        // 초기화할 때 필요한 코드
    }
}

struct SomeStruct {
    init() {
        // 초기화할 때 필요한 코드
    }
}

enum SomeEnum {
 
        case someCase
        // 열거형은 초기화할때 반드시 case 중 하나가 되어야 함
        init(){
            self = .someCase
            // 초기화할 때 필요한 코드
        }
}

// 구조체와 이니셜라이저
//struct Area {
//    var squareMeter: Double
//    init() {
//        squareMeter = 0.0 // squareMeter의 초깃값 할당
//    }
//}
//
//let room: Area = Area()
//print(room.squareMeter)

// 프로퍼티 기본값 지정
//struct Area {
//    var squareMeter: Double = 0.0 //프로퍼티 기본값 할당
//}
//
//let room: Area = Area()
//print(room.squareMeter)

//이니셜라이저 매개변수
struct Area {
    var squareMeter: Double
    
    init(fromPy py: Double) { // 1번 이니셜라이저
        squareMeter = py * 3.3058
    }
    init(fromSquareMeter squareMeter: Double) {
        self.squareMeter = squareMeter //2번쩨
    }
    init(value: Double) {
        squareMeter = value
    }
    init(_ value: Double) {
        squareMeter = value
    }
}

let roomOne: Area = Area(fromPy: 15.0)
print(roomOne.squareMeter)

let roomTwo: Area = Area(fromSquareMeter: 33.06)
print(roomTwo.squareMeter)

let roomThree: Area = Area(value: 30.0)
let roomFour: Area = Area(55.0)

//옵셔널 프로퍼티 타입
//class Person {
//    var name: String
//    var age: Int?
//
//    init(name: String) {
//        self.name = name
//    }
//}
//
//let unzzan: Person = Person(name: "unzzan")
//print(unzzan.name) // "unzzan"
//print(unzzan.age) //nil
//unzzan.age = 99
//print(unzzan.age) // Optional(99)
//unzzan.name = "은찬"
//print(unzzan.name) // "은찬"

//상수 프로퍼티
class Person {
    let name: String
    var age: Int?
    
    init(name: String) {
        self.name = name
    }
}
let unzzan: Person = Person(name: "Unzzan")
//unzzan.name = "김은찬" //오류 발생함니당

////클로저를 통한 프로퍼티 기본값 설정
//class someClass1 {
//    let someProperty: SomeType = {
//        //새로운 인스턴스를 생성하고 사용자 정의 연산 통한 후 반환해준다
//        //반환되는 값의 타입은 someType과 같은 타입이어야 함
//        return someValue
//    }()
//}

//디이니셜라이저 구현
class SomeClass2 {
    deinit {
        print("Instance will be deallocated immediately")
    }
}
var instance: SomeClass? = SomeClass()
instance = nil // Instance will be deallocated immediately
