let $zip-codes :=
    <zip-codes city="Nashville">
        <zip-code>37027</zip-code>
        <zip-code>37210</zip-code>
        <zip-code>37209</zip-code>
        <zip-code>37212</zip-code>
    </zip-codes>
let $city :=$zip-codes/@city
for $zip-code in $zip-codes/zip-code
return
    $zip-code/text()