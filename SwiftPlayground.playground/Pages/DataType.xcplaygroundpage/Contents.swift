//Int & UInt
var integer: Int = -100
let unsignedInteger: UInt = 50 // UInt값에는 음수값을 할당할 수 없음
print("integer 값: \(integer),  unsinedInteger 값: \(unsignedInteger)")
print("Int 최댓값: \(Int.max), Int 최소값: \(Int.min)")
print("UInt 최댓값: \(UInt.max), UInt 최소값: \(UInt.min)")

// Int와 UInt는 다른 타입임!

//Bool
var boolean: Bool = true
boolean.toggle() // true - false 반전
let imCute: Bool = true
let isTimeUnlimited: Bool = false
print("시간은 무한한가?: \(isTimeUnlimited)")
print("김은찬은 귀여운가?: \(imCute)")

//Float와 Double
// Float이 수용할 수 있는 범위를 넘어섬
//자신이 감당할 수 있는 만큼만 남겨서 정확도가 떨어진다
var floatValue: Float = 1234567890.1

//Double은 수용가능
var doubleValue: Double = 1234567890.1

print("floatValue: \(floatValue) doubleValue: \(doubleValue)")

// 임의의 수 만들기
Int.random(in: -100...100)
UInt.random(in: 1...30)
Double.random(in: 1.5...4.3)
Float.random(in: -0.5...1.5)

//Character
let alphabetA: Character = "A"
print(alphabetA)

// 유니코드 문자를 사용할 수도 있음
let commandCharacter: Character = "🧐"
print(commandCharacter)

let 한글변수이름도가능해요: Character = "가"

//String
// 상수로 선언된 문자열은 변경이 불가능
let name: String = "은찬"

//이니셜라이저를 사용하면 빈 문자열을 생성할 수 있음
//var 키워드를 사용하여 변수를 생성했으므로 문자열의 수정 및 변경이 가능함
var introduce: String = String()

//append() 메서드를 사용하면 문자열을 이어붙일 수 있다
introduce.append("내 이름은")

//+ 연산자로도 이어붙일수있음
introduce = introduce + " " + name + "이지롱"
print(introduce)

//name에 해당하는 문자의 수를 셀 수 있음
print("name의 글자 수: \(name.count)")
//빈 문자열인지 확인할 수 있음
print("introduce가 비어있는가?: \(introduce.isEmpty)")

//유니코드의 스칼라값을 사용하면 값에 해당하는 표현이 출력된다
let unicodeScalarValue: String = "\u{2665}"

//Any
var someVar: Any = "은찬" //Any로 선언된 변수에는 문자열도
someVar = 50            // 정수도
someVar = 100.1         // 실수도 모든 타입 가능
