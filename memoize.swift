func memoize<T:Hashable, U>(fn : T -> U) -> (T -> U) {
    var cache = Dictionary<T, U>()

    func memoized(val : T) -> U {
        if cache.indexForKey(val) {
            return cache[val]!
        } else {
            var valToCache = fn(val)
            cache[val] = valToCache
            return valToCache
        }
    }
    return memoized;
}
