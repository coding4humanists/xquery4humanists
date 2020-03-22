xquery version "3.1";

let $name := "Franklin D. Roosevelt"
let $url := fn:lower-case($name)
let $url := fn:replace($url, "\W+", "-")
return
    $url