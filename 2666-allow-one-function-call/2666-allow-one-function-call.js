/**
 * @param {Function} fn
 * @return {Function}
 */
var once = function(fn) {
    let state = false;
    let result
    
	return function(...args){
        if(!state){
            result = fn(...args)
            state = true
            return result
        }
        
        return undefined
    }
};

/**
 * let fn = (a,b,c) => (a + b + c)
 * let onceFn = once(fn)
 *
 * onceFn(1,2,3); // 6
 * onceFn(2,3,6); // returns undefined without calling fn
 */
