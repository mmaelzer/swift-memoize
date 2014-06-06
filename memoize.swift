func memoize<T:Hashable, U>(fn : T -> U) -> (T -> U) {
    var cache = Dictionary<T, U>()
    func memoized(val : T) -> U {
        if !cache.indexForKey(val) {
            cache[val] = fn(val)
        }
        return cache[val]!
    }
    return memoized;
}
