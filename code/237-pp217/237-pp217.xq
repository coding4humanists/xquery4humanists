xquery version "3.1";

let $book := fn:doc("book.xml")
return
    insert node <genre>Science Fiction</genre> into $book/book