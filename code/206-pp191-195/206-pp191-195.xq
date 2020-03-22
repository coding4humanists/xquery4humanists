xquery version "3.1";

declare function local:get-dates($name as xs:string?) as xs:integer* {
    (
        fn:replace($name, ".*(\d{4})–(\d{4}).", "$1 $2")
        => fn:tokenize(" ")
    )
    ! xs:integer(.)
};

declare function local:is-seventeenth($dates as xs:integer*) as xs:boolean {
    (($dates[1] gt 1601) and ($dates[1] lt 1700))
    or
    (($dates[2] gt 1601) and ($dates[2] lt 1700))
};

let $check-dates :=
    function($name as xs:string?, $century as function(*)) as xs:boolean {
        let $dates := local:get-dates($name)
        return
            $century($dates)
    }

let $writers :=
    (
        "Shakespeare (1564–1616)",
        "Milton (1608–1674)",
        "Dryden (1631–1700)",
        "Blake (1757–1827)",
        "Keats (1795–1821)"
    )
return
    fn:filter($writers, $check-dates(?, local:is-seventeenth#1))