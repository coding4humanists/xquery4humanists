xquery version "3.1";

let $eastern-countries := ["China", "Russia", "Japan"]
let $western-countries := ["Mexico", "Canada", "United States"]
let $countries := array:join(($eastern-countries, $western-countries))
return
    $countries