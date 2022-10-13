var value = 3
switch value {
case 0: print("0이다")
case 1: print("1이다")
case 2, 3: print("2 또는 3이다")

default: print("디폴트다")
}

var age = 17
switch age {
case 1...5: print("어린이")
case 6...14: print("귀요미")
case 15..<20: print("망나니")
default: print("디폴트다")
}
