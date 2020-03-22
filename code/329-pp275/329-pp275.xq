let $num :=
    fn:json-doc("https://json.xquery.ninja/")?milliseconds_since_epoch
return
    $num cast as xs:integer