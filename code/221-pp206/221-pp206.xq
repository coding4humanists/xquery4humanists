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
        delete node $mutated-movie/date
    return
        $mutated-movie