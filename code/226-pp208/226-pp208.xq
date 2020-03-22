xquery version "3.1";

let $movie :=
    <movie>
        <title>Way of the Dragon</title>
        <director>Bruce Lee</director>
        <date>1972</date>
    </movie>
return
    copy $mutated-movie := $movie
    modify
        replace value of node $mutated-movie/director/text()
        with $mutated-movie/director/text() || " (1940-1973)"
    return
        $mutated-movie