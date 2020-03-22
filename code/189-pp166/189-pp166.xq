xquery version "3.1";

let $name := "Franklin D. Roosevelt"
let $url := fn:replace(fn:lower-case($name), "\W+", "-")
return
    $url