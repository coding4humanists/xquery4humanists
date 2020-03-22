xquery version "3.1";

declare variable $eastern-countries := ["China", "Russia", "Japan"];
declare variable $western-countries := ["Mexico", "Canada", "United States"];
declare variable $countries := 
    map {
        "eastern-countries": $eastern-countries,
        "western-countries": $western-countries
    };

$countries?("western-countries")(1)