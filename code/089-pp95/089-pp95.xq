xquery version "3.1";

declare context item := document {
<list>
    <book date="2015">Interdisciplining Digital Humanities</book>
    <book date="2013">Hacking the Academy</book>
    <book date="2016">New Companion to Digital Humanities</book>
    <book date="2013">Macroanalysis</book>
    <book date="2013">Emergence of the Digital Humanities</book>
    <book date="2014">Digital Critical Editions</book>
    <book date="2015">Digital Humanities</book>
</list>
};

declare variable $list := ./list;

let $books := $list/book
for $book in $books
order by $book/@date descending
return
    $book