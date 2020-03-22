xquery version "3.1";

declare function local:milliseconds-since-epoch($now as xs:dateTime) 
    as xs:integer {
    let $epoch := xs:dateTime("1970-01-01T00:00:00Z")
    let $duration-since-epoch := $now - $epoch
    let $milliseconds-since-epoch :=
        $duration-since-epoch div xs:dayTimeDuration("PT0.001S")
    return
        $milliseconds-since-epoch cast as xs:integer
};

let $date := fn:format-date(fn:current-date(), "[M01]-[D01]-[Y0001]")
let $time := fn:format-time(fn:current-time(), "[h01]:[m01]:[s01] [PN]")
let $epoch := local:milliseconds-since-epoch(fn:current-dateTime())
return
    map {
        "time": $time,
        "date": $date,
        "milliseconds_since_epoch": $epoch
    }