xquery version "3.1";

for $line in fn:unparsed-text-lines("books.csv")
return
    element row { $line }