xquery version "3.1";

let $movie :=
    <movie>
        <title>The Piano</title>
        <director>Jane Campion</director>
        <date>1993</date>
    </movie>
let $title := <title>Piano, The</title>
return
    element movie { $title, $movie/* except $movie/title }