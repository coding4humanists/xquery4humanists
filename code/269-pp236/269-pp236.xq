xquery version "3.1";

declare namespace tei="http://www.tei-c.org/ns/1.0";

declare variable $shells := 
    "She sells sea-shells on the sea-shore.
    The shells she sells are sea-shells, I'm sure.
    For if she sells sea-shells on the sea-shore
    Then I'm sure she sells sea-shore shells.";

$shells contains text "shells" occurs from 2 to 6 times