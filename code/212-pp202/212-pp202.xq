xquery version "3.1";

let $movie :=
    <movie>
        <title>The Piano</title>
        <director>Jane Campion</director>
        <date>1993</date>
    </movie>
let $rating := element rating { "R" } 
return
    element movie { $movie/* except $movie/date }
