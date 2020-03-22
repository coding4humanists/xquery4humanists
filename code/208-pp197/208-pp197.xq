let $join-with-space := fn:string-join(?, ", ")
let $words := ("Mary", "Margaret", "Max")
return
    $join-with-space($words)