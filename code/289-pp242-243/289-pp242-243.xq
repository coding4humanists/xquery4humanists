let $documents :=
<documents>
    <document>
        <title>The Secretary of State to the Consul at Taipei (Edgar)</title>
        <body>88. Urtel 150 May 6. Dept notes ur statement "question being asked
            locally" etc. Pls identify persons raising this question.</body>
    </document>
    <document>
        <title>The Ambassador in China (Stuart) to the Secretary of
            State</title>
        <body>539. Col. Dau returned from Taipei (Embtel 500, Mar. 9) Mar. 11
            and his view situation telegraphed War Department with request
            information be transmitted to State Department.</body>
    </document>
</documents>
let $query-term := "Taipei"
for $document score $score in $documents/document
    [
        title contains text ({$query-term} weight {10})
        or
        body contains text ({$query-term})
    ]
order by $score descending
return
    <hit score="{ fn:format-number($score, '0.00') }">{ 
        $document/title
    }</hit>