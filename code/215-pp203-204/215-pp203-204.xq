xquery version "3.1";

let $movie := <movie alt-title="Return of the Dragon">Way of the Dragon</movie> 
return
    element movie { $movie/@*, "Dragon, Way of the" }