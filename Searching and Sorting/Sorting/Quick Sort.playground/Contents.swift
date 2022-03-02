// more information here: https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Functions.html#//apple_ref/doc/uid/TP40014097-CH10-ID166
func quickSort(_ input: [Int], low: Int, high: Int) -> [Int] {
    // this is a copy of the input so its contents can be modified
    var result = input
    
    if low < high {
        let pivot = result[high]
        var i = low
        
        for j in low..<high {
            if result[j] <= pivot {
                (result[i], result[j]) = (result[j], result[i])
                i += 1
            }
        }
        (result[i], result[high]) = (result[high], result[i])
        result = quickSort(result, low: low, high: i - 1)
        result = quickSort(result, low: i + 1, high: high)
    }
    return result
}

// Test case
var testArray = [21, 4, 1, 3, 9, 20, 25, 6, 21, 14]
print(quickSort(testArray, low: 0, high: testArray.count - 1))
