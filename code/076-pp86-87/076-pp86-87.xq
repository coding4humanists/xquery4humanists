let $isbn := "978-0300137231"
let $isbn-without-dash := fn:replace($isbn, "-", "")
return
    fn:string-length($isbn-without-dash)