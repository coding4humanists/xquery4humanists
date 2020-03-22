let $name := "XQuery Working Group"
return
``[
@prefix foaf: <http://xmlns.com/foaf/0.1/> .

_:xqywg a foaf:Group;
  foaf:name "`{ $name }`" .
]``