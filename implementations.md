---
layout: page
title: Implementations
permalink: /implementations/
category: top-level
---

This document discusses the four XQuery implementations discussed in the book: [BaseX](#basex), [eXist](#exist), [Saxon](#saxon), and [oXygen XML Editor](#oxygen-xml-editor). It lists key links, describes support for the XQuery specifications, and provides chapter-specific notes.

## BaseX

### BaseX links

- Homepage: [http://basex.org](http://basex.org)
- Documentation: [http://docs.basex.org/wiki/Main_Page](http://docs.basex.org/wiki/Main_Page)
- Source code: [https://github.com/basexdb/basex](https://github.com/basexdb/basex)
- Mailing list: [basex-talk](https://mailman.uni-konstanz.de/mailman/listinfo/basex-talk)
- Stack Overflow: [Questions tagged basex](https://stackoverflow.com/questions/tagged/basex)

### XQuery coverage in BaseX

BaseX has posted full notes on its [conformance with XQuery 3.1 and related standards](http://docs.basex.org/wiki/XQuery). The following information is current as of BaseX 9.3.1.

- BaseX supports all of XQuery 3.1 Functions and Operators, except for the following (note that all functions covered in the book have alternatives listed):
    - `fn:collation-key()`
    - `fn:load-xquery-module()` 
    - `fn:transform()` (use BaseX's [`xslt:transform()`](http://docs.basex.org/wiki/XSLT) function)

### Chapter-specific notes for BaseX

- Chapter 9
    - `fn:put()` writes documents to "secondary storage". See BaseX's documentation for [discussion](http://docs.basex.org/wiki/XQuery_Update#Built-in_Functions) of this function and a link to "Additional database functions exist for performing updates on document and database level."

## eXist

### eXist links

- Homepage: [https://exist-db.org](https://exist-db.org)
- Documentation: [https://exist-db.org/exist/apps/doc](https://exist-db.org/exist/apps/doc)
- Source code: [https://github.com/eXist-db/exist](https://github.com/eXist-db/exist)
- Mailing list: [exist-open](https://lists.sourceforge.net/lists/listinfo/exist-open)
- Stack Overflow: [Questions tagged exist-db](https://stackoverflow.com/questions/tagged/exist-db)

### XQuery coverage in eXist

eXist has posted full notes on its [conformance with XQuery 3.1 and related standards](https://exist-db.org/exist/apps/doc/xquery#current-status-of-xquery-support). The following list is current as of eXist v5.2.0.

- eXist has implemented all of XQuery 3.1, but has not yet implemented:
    - Count clause (introduced in Chapter 7; pre-sorting results and using the `at` clause can generally be substituted)
    - Windowing (introduced in Chapter 7)
- eXist supports all of XQuery 3.1 Functions and Operators, except for the following (note that all functions covered in the book have alternatives listed, and most of the others have alternate methods of achieving the same aim):
    - `array:sort()` (as an alternative, use a FLWOR expression with the `order by` clause)
    - `fn:collation-key()`
    - `fn:default-language()`
    - `fn:element-with-id()`
    - `fn:format-integer()` (the `fn:format-number()` function can generally be substituted)
    - `fn:nilled()`
    - `fn:path()` (use eXist's [`util:node-xpath()`](https://exist-db.org/exist/apps/fundocs/view.html?uri=http://exist-db.org/xquery/util#node-xpath.1) function)
    - `fn:round()` (eXist supports the version that rounds to the nearest whole number; the version that takes a `$precision` parameter is not present, but, for example, a precision of 2 can be achieved by multiplying the number by 100 before rounding it, then dividing the result by 100). 
    - `fn:nilled()`
    - `fn:trace()` (eXist supports the version with two parameters but not just one)
    - `fn:transform()` (use eXist's [`transform:transform()`](https://exist-db.org/exist/apps/fundocs/view.html?uri=http://exist-db.org/xquery/transform#transform.3) function)
    - `fn:uri-collection()`
    - `fn:xml-to-json()` (this function is available in an [eXist-compatible implementation](https://gist.github.com/joewiz/d986da715facaad633db))
    - `map:find()` (use this [eXist-compatible implementation](https://gist.github.com/joewiz/906c7d3248c09a07407d91b73dfd7fe0))
- eXist has not implemented the following related specifications:
    - XQuery Update Facility 3.0 (introduced in Chapter 9). Instead, it provides [an eXist-specific update facility](https://exist-db.org/exist/apps/doc/update_ext.xml).
    - XPath and XQuery Full Text 3.0 (introduced in Chapter 10). Instead, it provides [a full text search module](https://exist-db.org/exist/apps/doc/lucene.xml) based on Apache Lucene.

### Chapter-specific notes for eXist

- Chapter 9
    - eXist does not support the XQuery Update Facility 3.0. Instead, use the [eXist-specific update facility](https://exist-db.org/exist/apps/doc/update_ext.xml), which can perform all of the same functions.
    - As a substitute for the `fn:put()` function, introduced in XQuery Update Facility 3.0, use [`xmldb:store()`](https://exist-db.org/exist/apps/fundocs/view.html?uri=http://exist-db.org/xquery/xmldb#store.3) to store documents or resources in the database or [`file:serialize()`](https://exist-db.org/exist/apps/fundocs/view.html?uri=http://exist-db.org/xquery/file#serialize.3) to store XML documents on the file system. (See also [`file:serialize-binary()`](https://exist-db.org/exist/apps/fundocs/view.html?uri=http://exist-db.org/xquery/file#serialize-binary.2) to store non-XML resources to the file system.)
    - eXist does not require the `%updating` annotation to be added to functions that contain updating expressions. Nor does it require the `%simple` annotation to be added to non-updating functions.
- Chapter 10
    - eXist does not support the XPath and XQuery Full Text Facility 3.0 (introduced in Chapter 10). Instead, it provides [a full text search module](https://exist-db.org/exist/apps/doc/lucene.xml) based on Apache Lucene, which can perform many of the same functions, as well as other functions not provided by the XQuery Full Text Facility.

## Saxon

Saxon is oXygen's default, built-in XQuery engine. It can also be called via the command line.

### Saxon links

- Homepage: [https://www.saxonica.com](https://www.saxonica.com/)
- Documentation: [https://www.saxonica.com/documentation/documentation.xml](https://www.saxonica.com/documentation/documentation.xml)
- Source code: [https://www.saxonica.com/html/documentation/about/resources.html](https://www.saxonica.com/html/documentation/about/resources.html)
- Mailing list: [saxon-help](https://sourceforge.net/projects/saxon/lists/saxon-help)
- Stack Overflow: [Questions tagged saxon](https://stackoverflow.com/questions/tagged/saxon)

### XQuery coverage in Saxon

Saxon has posted full notes on its [conformance with XQuery 3.1 and related standards](http://www.saxonica.com/html/documentation/conformance/xquery31.html).

- Saxon supports the full XQuery 3.1 Functions and Operators specification.
- Saxon has not implemented the following related specifications:
    - XQuery Update Facility 3.0 (introduced in Chapter 9), but implements XQuery Update Facility 1.0 as extensions to the XQuery 3.1 grammar. 
    - XQuery Full Text Facility 3.0 (introduced in Chapter 10). Saxon provides no full text search facility.
- The different editions of Saxon implement different levels of XQuery 3.1:
    - Saxon-HE (the free, open source edition) implements XQuery 3.1 at the Minimal Conformance level, plus the Module Feature and the Serialization Feature.
    - Saxon-PE (commercial, included in oXygen) adds support for the Higher-Order Function Feature.
    - Saxon-EE (commercial, included in oXygen) adds support for the Schema Aware Feature and the Typed Data Feature.

### Chapter-specific notes for Saxon

- Chapter 4
    - Saxon complains when serializing a free-standing attribute node (04-13, 04-15). As a workaround, add `/fn:string()` to the expression to retrieve the string value of the attribute.
- Chapter 5
    - oXygen 20.1 (which bundles Saxon 9.8.0.12) returns no results for 05-23, but Saxon 9.9.0.1 returns the expected result.
- Chapter 7
    - As noted in the note in the text, oXygen complains when serializing non-XML items like maps, arrays, or functions. Use the workaround noted in the text, the `fn:serialize()` function. (Also affects Chapter 12.)
    - When using functions in the `map` or `array` namespace, these namespaces must be declared in the prolog.
- Chapter 9
    - When running 09-05 in oXygen, must enable "linked tree model" in Preferences > Saxon HE/PE/EE Options. I was unable to get the `-tree:linked` flag to work when executing this query on the command line.
    - 09-11 thru 09-13 complains of "unexpected token name 'transform' beyond end of query
- Chapter 12
    - The `fn:json-to-xml()` function used in 12-07 fails when the "linked tree model" is enabled; the error is "missing call on startContent()"; disabling this allows the function to work

## oXygen XML Editor

### oXygen links

- Homepage: [https://www.oxygenxml.com](https://www.oxygenxml.com)
- Documentation: [https://www.oxygenxml.com/doc/versions/22.0/ug-editor/index.html](https://www.oxygenxml.com/doc/versions/22.0/ug-editor/index.html)
- Mailing list: [oxygen-user](https://www.oxygenxml.com/mailinglists.html)
- Forum: [oXygen Forums](https://www.oxygenxml.com/forum/)

### XQuery coverage in oXygen

- By default, oXygen is configured to use Saxon as its XQuery engine. For information on Saxon, see [above](#saxon).
- oXygen can also be [configured](https://www.oxygenxml.com/xml_editor/eXist_support.html) to use eXist as its XQuery engine. This is configured via Preferences > XQuery > XML > XSLT-FO-XQuery > XQuery > Validation engine. For information on eXist, see [above](#exist).
