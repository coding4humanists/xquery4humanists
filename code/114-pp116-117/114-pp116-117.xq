xquery version "3.1";

declare namespace tei = "http://www.tei-c.org/ns/1.0";

declare function local:make-tei-title(
    $title as xs:string,
    $subtitle as xs:string?
    ) as element(tei:title) {
    <title type="full" xmlns="http://www.tei-c.org/ns/1.0">
        <title type="main">{ $title }</title>
        <title type="sub">{ $subtitle }</title>
    </title>
};

local:make-tei-title("Citizens at Last","The Woman Suffrage Movement in Texas")