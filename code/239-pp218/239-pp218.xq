xquery version "3.1";

let $book := fn:doc("book.xml")
return
    replace value of node $book/book/date with "2015"