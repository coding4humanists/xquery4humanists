let $title := "Citizens at Last"
let $subtitle := "The Woman Suffrage Movement in Texas"
let $join-titles :=
    function($title as xs:string, $subtitle as xs:string)
        as xs:string {
        fn:concat($title, ": ", $subtitle)
    }
return
    $join-titles($title, $subtitle)