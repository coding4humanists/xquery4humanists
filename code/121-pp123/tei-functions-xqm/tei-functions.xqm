xquery version "3.1";

module namespace tf = "http://xquery.forhumanists.org/tei-functions";

import module namespace functx = "http://www.functx.com"
    at "http://www.xqueryfunctions.com/xq/functx-1.0-doc-2007-01.xq";

declare namespace tei = "http://www.tei-c.org/ns/1.0";

declare function tf:make-tei-title(
    $title as xs:string,
    $subtitle as xs:string?
    ) as element(tei:title) {
    <title type="full" xmlns="http://www.tei-c.org/ns/1.0">
        <title type="main">{ functx:capitalize-first($title) }</title>
        <title type="sub">{ functx:capitalize-first($subtitle) }</title>
    </title>
};