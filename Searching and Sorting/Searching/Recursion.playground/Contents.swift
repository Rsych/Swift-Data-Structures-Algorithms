// Get the fibonacci number at the position in the sequence
// be sure to check the base case, and recursively call getFib

//func getFib(_ position: Int) -> Int {
//    if position == 0 || position == 1 {
//        return position
//    }
//
//    var first = 0
//    var second = 1
//    var fib = 1
//
//    for _ in 2...position {
//        fib = first + second
//        first = second
//        second = fib
//    }
//    return fib
//}

func getFib(_ position: Int) -> Int {
    if position == 0 || position == 1 {
        return position
    }
    return getFib(position - 1) + getFib(position - 2)
}

//Test cases
print(getFib(9)) // Should be 34
print(getFib(11)) // Should be 89
print(getFib(0)) // Should be 0
