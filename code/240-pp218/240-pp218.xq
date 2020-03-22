xquery version "3.1";

let $book := fn:doc("book.xml")
return
    rename node $book/book/author as "creator"