xquery version "3.1";

declare namespace html="http://www.w3.org/1999/xhtml";
declare namespace tei="http://www.tei-c.org/ns/1.0";

let $p := <html:p>This is a <html:b>short</html:b> paragraph.</html:p>
return
    copy $mutated-p := $p
    modify 
        rename node $mutated-p as "tei:p"
    return
        $mutated-p