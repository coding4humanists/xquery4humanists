xquery version "3.1";

let $eastern-countries := ["China", "Russia", "Japan"]
let $western-countries := ["Mexico", "Canada", "United States"]
let $countries :=
    map {
        "eastern-countries": $eastern-countries,
        "western-countries": $western-countries
    }
return
    $countries