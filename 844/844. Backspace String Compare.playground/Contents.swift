func backspaceCompare(_ s: String, _ t: String) -> Bool {
    var arrayS = Array(s)
    var arrayT = Array(t)
    
    func helper(array: inout [Character]) {
        var i = 0
        while i < array.count {
            if array[i] == "#" {
                if i > 0 {
                    array.remove(at: i)
                    array.remove(at: i - 1)
                    i -= 1
                } else {
                    array.remove(at: i)
                }
            } else {
                i += 1
            }
        }
    }
    
    helper(array: &arrayS)
    helper(array: &arrayT)
    
    return arrayS == arrayT
}

backspaceCompare("a##c", "#a#c")
