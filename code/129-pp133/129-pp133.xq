xquery version "3.1";

declare variable $colors := ("red", "white", "blue");

fn:string-join($colors, " ")