xquery version "3.1";

let $json := '{
    "time": "04:07:53 PM",
    "date": "08-30-2016",
    "milliseconds_since_epoch": 1472591273170
}'
return
    fn:json-to-xml($json)