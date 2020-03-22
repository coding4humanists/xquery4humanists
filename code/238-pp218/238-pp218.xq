xquery version "3.1";

let $book := fn:doc("book.xml")
return
    delete node $book/book/genre