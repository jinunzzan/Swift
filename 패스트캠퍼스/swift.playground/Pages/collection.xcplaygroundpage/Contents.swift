

import UIKit

//Array
var numbers: Array<Int> = Array<Int>()
numbers.append(1)
numbers.append(2)
numbers.append(3)

numbers[0]
numbers[1]

numbers.insert(4, at:2)
numbers.remove(at: 0)

var names: [String] = []

//Dictionary
//var dic: Dictionary<String, Int> = Dictionary<String, Int>()
var dic: [String: Int] = ["김은찬":1]
dic["최승현"] = 3
dic["승현초이"] = 7
dic
dic["최승현"] = 6
dic

dic.removeValue(forKey: "최승현")
dic

//Set 순서없고 데이터 중복 안됨
var set: Set = Set<Int>()
//축약형 없음
set.insert(10)
set.insert(20)
set.insert(30)
set.insert(30)
set

set.remove(20)
set

print(numbers)

