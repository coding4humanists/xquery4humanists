xquery version "3.1";

let $original :=
    <movie>
        <title>Way of the Dragon</title>
        <director>Bruce Lee</director>
        <date>1972</date>
    </movie>
let $chinese-title :=
    <title alt="Chinese">猛龍過江</title>
let $copy :=
    copy $new := $original
    modify
        insert node $chinese-title as first into $new
    return
        $new
return
    $copy