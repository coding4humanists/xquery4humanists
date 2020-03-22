xquery version "3.1";

let $name := "Franklin D. Roosevelt"
let $url := fn:lower-case($name) => fn:replace("\W+", "-")
return
    $url