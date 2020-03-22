xquery version "3.1";

let $doc :=
    <book>
        <title>Version Control: A Novel</title>
        <author>Palmer, Dexter</author>
        <date>2016</date>
    </book>
return
    fn:put($doc, "book.xml")