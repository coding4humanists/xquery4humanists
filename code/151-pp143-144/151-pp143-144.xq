let $article := 
    map {
        "titles": map {
            "english": "On Teaching XQuery to Digital Humanists",
            "chinese": "如何給數位人文研究者教 XQuery"
            }
    }
return
    $article?titles?chinese