xquery version "3.1";

let $json :=
    <map xmlns="http://www.w3.org/2005/xpath-functions">
        <string key="time">04:07:53 PM</string>
        <string key="date">08-30-2016</string>
        <number key="milliseconds_since_epoch">1472591273170</number>
    </map>
return
    fn:xml-to-json($json, map {"indent": true()})