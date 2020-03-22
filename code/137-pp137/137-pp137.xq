declare function local:find-string($test as xs:string?) as xs:string? {
    if ($test) then
        "I found a string"
    else 
        ()
};

local:find-string("test")