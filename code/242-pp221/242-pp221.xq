xquery version "3.1";

declare %updating function local:add-timestamp($doc) {
    if ($doc/book/timestamp) then
        replace value of node $doc/book/timestamp 
            with fn:current-dateTime()
    else
        insert node element timestamp { 
            fn:current-dateTime() } 
        into $doc/book
};

local:add-timestamp(fn:doc("book.xml"))