xquery version "3.1";

let $eastern := map { "eastern": ["China", "Russia", "Japan"] }
let $western := map { "western": ["Mexico", "Canada", "United States"] }
return
    map:merge(($eastern, $western))