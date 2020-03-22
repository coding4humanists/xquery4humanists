xquery version "3.1";

let $movie :=
    <movie>
        <title>Way of the Dragon</title>
        <director>Bruce Lee</director>
        <date>1972</date>
    </movie>
let $title := <title>Return of the Dragon</title>
return
    copy $mutated-movie := $movie
    modify
        replace node $mutated-movie/title with $title
    return
        $mutated-movie