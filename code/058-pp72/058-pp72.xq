xquery version "3.1";

declare context item := document {
<book>
    <title>Primo Levi: The Matter of a Life</title>
    <author>Berel Lang</author>
    <date year="2013">November 26, 2013</date>
    <publisher>
        <city>New Haven</city>
        <press>Yale University Press</press>
    </publisher>
    <identifier type="ISBN-10">0300137230</identifier>
    <identifier type="ISBN-13">978-0300137231</identifier>
</book>
};

/book/identifier/fn:string-length(fn:replace(., "-", ""))