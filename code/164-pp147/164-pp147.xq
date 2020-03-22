xquery version "3.1";

declare variable $countries :=
    [
        ["China", "Russia", "Japan"],
        ["Mexico", "Canada", "United States"]
    ];

$countries?1?3