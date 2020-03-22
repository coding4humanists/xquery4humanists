xquery version "3.1";

let $countries :=
    map {
        "eastern": ["China", "Russia", "Japan"],
        "western": ["Mexico", "Canada", "United States"]
    }
let $eastern := array:append($countries("eastern"), "Indonesia")
return
    map:put($countries, "eastern", $eastern)