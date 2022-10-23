//////: [Previous](@previous)
////
////import Foundation
////
////var greeting = "Hello, playground"
////
////
//////
//////func backwards(first: String, second: String) -> Bool {
//////    print("\(first) \(second) 비교중")
//////    return first > second
//////}
//////let reversed: [String] = names.sorted(by: backwards)
//////print(reversed)
////
/////*
//// {(매개변수들) -> 반환타입 in
//// 실행코드
//// }
//// */
////
//////let reversed: [String] = names.sorted(by: {(first: String, second: String) -> Bool in
//////    return first > second
//////})
//////print(reversed)
////
//////// 후행 클로저 사용
//////let reversed: [String] = names.sorted(){(first: String, second: String) -> Bool in
//////    return first > second
//////}
////
//////sorted(by:) 메서드의 소괄호도 생략 가능
//////let reversed: [String] = names.sorted{(first: String, second: String) -> Bool in
//////    return first > second
//////}
////
//////func doSomething(do: (String) -> Void,
//////                 onSuccess: (Any) -> Void,
//////                 onFailure: (Error) -> Void){
//////    //do something...
//////}
//////
//////doSomething{(someString: String) in
//////    //do closure
//////} onSuccess: { (result: Any) in
//////    // success closure
//////} onFailure: { (error: Error) in
//////    //failure closure
//////}
////
//////let reversed:[String] = names.sorted{(first, second) in
//////    return first > second
//////}
////
////let names: [String] = ["c", "d", "a", "b"]
////
//////let reversed: [String] = names.sorted {
//////    return $0 > $1
//////}
//////print(reversed)
//////
//////let reversed: [String] = names.sorted {$0 > $1}
////
////
////let reversed: [String] = names.sorted(by: >)
////print(reversed)
//
//func makeIncrementer(forIncrement amount: Int) -> (()->Int){
//    var runningTotal = 0
//    func incrementer() -> Int{
//        runningTotal += amount
//        return runningTotal
//    }
//    return incrementer
//}
//
//let incrementByTwo: (()->Int) = makeIncrementer(forIncrement: 2)
//
//let sameWithiuncrementByTwo:(()->Int) = incrementByTwo
//
//let first: Int = incrementByTwo() //2
//let second: Int = incrementByTwo() //4
////let third: Int = incrementByTwo() //6
////
////let incrementByTwo2: (()->Int) = makeIncrementer(forIncrement: 2)
////let incrementByTen:(()->Int) = makeIncrementer(forIncrement: 10)
////
////
////let first2: Int = incrementByTwo2() //2
////let second2: Int = incrementByTwo2() //4
////let third2: Int = incrementByTwo2() //6
////
////let ten: Int = incrementByTen() //10
////let twenty: Int = incrementByTen() //20
////let thirty: Int = incrementByTen() //30
//
//

//typealias VoidVoidClosure = () -> Void
//let firstClosure: VoidVoidClosure = {
//    print("Closure A")
//}
//let secondClosure: VoidVoidClosure = {
//    print("Closure B")
//}
//
////first 와 second 매개변수 클로저는 함수의 반환 값으로 사용될 수 있으므로 탈출 클로저 입니다
//func returnOneClosure(first: @escaping VoidVoidClosure, second: @escaping VoidVoidClosure, shouldReturnFirstClosure: Bool) -> VoidVoidClosure {
//    //전달인자로 전달받은 클로저를 함수 외부로 다시 반환하기 때문에 함수를 탈출하는 클로저이다
//    return shouldReturnFirstClosure ? first : second
//}
//
////함수에서 반환된 클로저가 함수 외부의 상수에 저장되었음
//let returnedClosure: VoidVoidClosure = returnOneClosure(first: firstClosure, second: secondClosure, shouldReturnFirstClosure: true)
//
//returnedClosure() // Closure A
//var closures: [VoidVoidClosure] = []
//
////closure 매개변수 클로저는 함수 외부의 변수에 저장될 수 있으므로 탈출 클로저입니다
//func appendClosure(closure: @escaping VoidVoidClosure){
//    closures.append(closure)
//}

//typealias VoidVoidClosure = () -> Void
//
//func funtionWithNoescapeClosure(closure: VoidVoidClosure){
//    closure()
//}
//func functionWithEscapingClosure(completionHandler: @escaping VoidVoidClosure) -> VoidVoidClosure {
//    return completionHandler
//}
//class SomeClass {
//    var x = 10
//
//    func runNoescapeClosure() {
//        //비탈출 클로저에서 self 키워드 사용은 선택 사항입니다.
//        funtionWithNoescapeClosure {x = 200}
//    }
//
//    func runEscapingClosure() -> VoidVoidClosure{
//        //탈출 클로저에서는 명시적으로 self를 사용해야 합니다
//        return functionWithEscapingClosure {self.x = 100}
//    }
//}
//let instance: SomeClass = SomeClass()
//instance.runNoescapeClosure()
//print(instance.x) //200
//
//let returnedClosure: VoidVoidClosure = instance.runEscapingClosure()
//returnedClosure()
//print(instance.x)
//

//var customersInLine: [String] = ["김","이","박","강"]
//print(customersInLine.count) //4
//
//// 클로저를 만들어두면 클로저 내부의 코드를 미리 실행(연산)하지 않고 가지고만 있음
//let customerProvider: () -> String = {
//    return customersInLine.removeFirst()
//}
//
//print(customersInLine.count) //4
//
////실제로 실행
//print("Now serving \(customerProvider())!")
//print(customersInLine.count) //3


