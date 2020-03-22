xquery version "3.1";

declare namespace tei = "http://www.tei-c.org/ns/1.0";

declare function local:make-tei-title($title, $subtitle) {
    <title type="full" xmlns="http://www.tei-c.org/ns/1.0">
        <title type="main">{ $title }</title>
        <title type="sub">{ $subtitle }</title>
    </title>
};

local:make-tei-title(
    <title>Citizens at Last</title>,
    ("The Woman Suffrage Movement in Texas", "and Tennessee")
)