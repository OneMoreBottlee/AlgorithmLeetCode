/**
 * @param {number[]} arr
 * @param {Function} fn
 * @return {number[]}
 */
var filter = function(arr, fn) {
    const result = []
    
    for(let i = 0; i < arr.length; i++){
        const element = arr[i]
        if(fn(element, i))result.push(element)
    }
    
    return result
};