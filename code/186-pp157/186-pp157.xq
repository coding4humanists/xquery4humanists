xquery version "3.1";

let $sentence := "I hope you have a nice day!"
let $tokens := fn:tokenize($sentence, " ")
let $ngram-length := 3

for sliding window $ngram in $tokens
    start at $starting-pos 
        when true()
    only end at $ending-pos
        when $ending-pos - $starting-pos + 1 eq $ngram-length
return
    <ngram>{ $ngram }</ngram>