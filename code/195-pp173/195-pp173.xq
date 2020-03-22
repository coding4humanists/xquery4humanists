xquery version "3.1";

let $phrase := "When in the Course of human events,
    it becomes necessary for one people to dissolve the
    political bands which have connected them with another,
    and to assume among the powers of the earth, the
    separate and equal station to which the Laws of Nature
    and of Nature’s God entitle them, a decent respect
    to the opinions of mankind requires that they should
    declare the causes which impel them to the separation."
let $words := fn:tokenize($phrase, "\s+") ! fn:replace(., "\W", "")
let $cumulative-total := 0
let $add-string-function :=
    function($cumulative-length, $current-string) {
        fn:string-length($current-string) + $cumulative-length
    }
return
    fn:fold-left($words, $cumulative-total, $add-string-function)
        div fn:count($words)