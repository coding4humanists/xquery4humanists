xquery version "3.1";

let $sentence := "This is a a test of of windowing"
let $words := fn:tokenize($sentence, " ")
for tumbling window $w in $words
    start $start-word at $pos
    next $next-word
    when $start-word eq $next-word
return
    <duplicate position="{ $pos }">{ $start-word }</duplicate>