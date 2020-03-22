let $titles :=
    map {
        "titles": map {
            "english": "On Teaching XQuery to Digital Humanists",
            "chinese": "如何給數位人文研究者教 XQuery"
        }
    }
return
    map:find($titles, "chinese")