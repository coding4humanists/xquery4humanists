xquery version "3.1";

declare function local:fetch-data($URI as xs:string) as document-node() {
    fn:error()
};

try
    {
        local:fetch-data("https://archive.org/metadata/heirofredclyffe00yong")
    }
catch *
    {
        "I caught this error: " || $err:code ||
        " with this description: " || $err:description
    }