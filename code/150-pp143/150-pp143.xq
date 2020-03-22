xquery version "3.1";

let $article :=
    map {
        "title": "On Teaching XQuery to Digital Humanists",
        "author": "https://orcid.org/0000-0003-0328-0792",
        "identifier": "10.4242/BalisageVol13.Anderson01"
    }
return
    $article("identifier", "author")