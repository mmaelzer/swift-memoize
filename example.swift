func fib(val: Int) -> Int {
    return val == 1 || val == 0 ? 1 : fibbed(val - 1) + fibbed(val - 2)
}

var fibbed = memoize(fib)
