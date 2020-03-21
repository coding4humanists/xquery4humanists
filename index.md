---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: home
category: top-level
---

![Cover image for XQuery for Humanists](https://texas-am.imgix.net/covers/9781623498290.jpg?auto=format&h=300)

## Welcome!

Welcome to the companion website for _XQuery for Humanists_, written by Clifford B. Anderson and Joseph C. Wicentowski and published by Texas A&M University Press in 2020 (available for purchase from [Amazon](https://www.amazon.com/dp/1623498295) and [Texas A&M University Press](https://www.tamupress.com/book/9781623498290/xquery-for-humanists/); see the latter to request a review or exam copy). 

This website offers supplementary material for readers of the book and those interested in its contents:

- An online and downloadable set of [the code](code/) listed in the book.
- Extensive information about the four [XQuery implementations](implementations/) introduced in the book, including each their built-in facilities for browsing [function documentation](functions/).
- A list of [errata](errata/) discovered in the book after it went to press.
- The full [table of contents](#table-of-contents).

Also:

- To discuss the book, please [join our mailing list](https://groups.google.com/forum/#!forum/xqfh).
- To report errors in the book or a problem with this website, please submit an issue or open a pull request on [the book's GitHub repository](https://github.com/coding4humanists/xquery4humanists).

## About the Book

XQuery is the best language for querying, manipulating, and transforming XML and JSON documents. Because XML is in many ways the lingua franca of the digital humanities, learning XQuery empowers humanists to discover and analyze their data in new ways.

Until now, though, XQuery has been difficult to learn because there was no textbook designed for non- or beginner programmers. _XQuery for Humanists_ fills this void with an approachable guidebook aimed directly at digital humanists.

Clifford B. Anderson and Joseph C. Wicentowski introduce XQuery in terms accessible to humanities scholars and do not presuppose any prior background in programming. It provides an informed, opinionated overview and recommends the best implementations, libraries, and paradigms to empower those who need it most. Emphasizing practical applicability, the authors go beyond the XQuery language to include the basics of underlying standards like XPath, related standards like XQuery Full Text and XQuery Update, and explain the difference between XQuery and languages like Python and R. This book will afford readers the skills they need to build and analyze large-scale documentary corpora in XML. 

_XQuery for Humanists_ is immeasurably valuable to instructors of digital humanities and library science courses alike and likewise is a ready reference for faculty, graduate students, and librarians who seek to master XQuery for their projects.

## Table of Contents

- Introduction ... xiii

### Chapter 1: Why XQuery for Humanists? ... 1

- 1.1 Built for the Kind of Data Most Digital Humanists Use ... 1
- 1.2 Easy for Beginning Programmers to Learn ... 4
- 1.3 XML and Digital Humanities Data ... 7
  - 1.3.1 XML Compared to Other Formats ... 9
    - 1.3.1.1 JSON ... 9
    - 1.3.1.2 RDF ... 11
- 1.4 XQuery Compared to XSLT ... 13
- 1.5 A Great Digital Humanities Community ... 15
- 1.6 Questions ... 17

### Chapter 2: Setting up Your XQuery Environment ... 18

- 2.1 Installing Java ... 21
- 2.2 Setting up BaseX ... 21
- 2.3 Setting up eXist ... 22
- 2.4 Setting up oXygen ... 24
- 2.5 Setting up Saxon ... 26
- 2.6 Accessing Online Companion Materials ... 27
- 2.7 Preserving and Sharing Code with GitHub ... 27
- 2.8 Questions and Exercises ... 31

### Chapter 3: Reviewing XML and Related Standards ... 33

- 3.1 History and Goals of XML ... 33
- 3.2 XML Basics ... 35
  - 3.2.1 Writing Well-Formed XML ... 35
  - 3.2.2 Writing Valid XML ... 39
- 3.3 XML as a Data Standard ... 41
- 3.4 XML Gotchas ... 44
  - 3.4.1 Embracing Namespaces ... 46
  - 3.4.2 Escaping Strings ... 49
  - 3.4.3 Whitespace ... 50
- 3.5 Questions and Exercises ... 52

### Chapter 4: Finding Your Way Around with XPath ... 55

- 4.1 XPath Axes ... 57
- 4.2 Node Tests by Kind ... 58
- 4.3 XPath’s Abbreviated Syntax ... 61
- 4.4 XPath Functions ... 63
- 4.5 XPath Tips and Tricks ... 72
  - 4.5.1 Wildcards ... 72
  - 4.5.2 Value Comparisons ... 73
  - 4.5.3 Selecting Multiple Element Names with the Union Operator ... 75
  - 4.5.4 Selecting the “Nth” Item or a Range of Items ... 75
- 4.6 Questions and Exercises ... 76

### Chapter 5: XQuery Basics ... 79

- 5.1 The Parts of an XQuery ... 80
- 5.2 Enclosed Expressions and Curly Braces ... 84
- 5.3 FLWOR Expressions ... 85
  - 5.3.1 Binding Variables ... 86
  - 5.3.2 Iterating over Variables ... 88
  - 5.3.3 Filtering Results ... 90
    - 5.3.3.1 A Short Note on Comparisons ... 92
  - 5.3.4 Ordering Results ... 94
  - 5.3.5 Counting Results ... 96
  - 5.3.6 Grouping Results ... 98
- 5.4 Conditional Expressions ... 101
  - 5.4.1 Effective Boolean Values ... 102
  - 5.4.2 The Else Clause Is Required: A Few Tips About Using Conditional Expressions ... 103
  - 5.4.3 Chaining Conditional Expressions ... 104
- 5.5 Questions and Exercises ... 105

### Chapter 6: Next Steps with XQuery ... 107

- 6.1 The Built-In Function Library ... 107
- 6.2 Writing Your Own Functions ... 114
- 6.3 Using Library Modules ... 119
  - 6.3.1 Importing Library Modules ... 119
  - 6.3.2 Creating Your Own Library Modules ... 121
  - 6.3.3 Public and Private Functions ... 124
  - 6.3.4 Wrapping Up ... 127
- 6.4 Questions and Exercises ... 127

### Chapter 7: Advanced XQuery ... 131

- 7.1 String Constructors ... 131
- 7.2 Maps and Arrays ... 136
  - 7.2.1 Revisiting Sequences ... 136
  - 7.2.2 Maps ... 139
  - 7.2.3 Arrays ... 145
  - 7.2.4 Combining Maps and Arrays ... 147
  - 7.2.5 Modifying Maps and Arrays ... 149
- 7.3 Windowing ... 152
  - 7.3.1 Understanding Tuple Streams ... 152
  - 7.3.2 Tumbling Windows ... 154
  - 7.3.3 Sliding Windows ... 156
- 7.4 Questions and Exercises ... 160

### Chapter 8: Thinking Functionally ... 163

- 8.1 Immutability ... 164
- 8.2 Maps ... 167
- 8.3 Folds ... 172
- 8.4 Recursion ... 176
  - 8.4.1 Transforming Data with Recursive Typeswitch ... 179
- 8.5 Higher-Order Functions ... 191
- 8.6 Questions and Exercises ... 198

### Chapter 9: Modifying Your Data with XQuery Update ... 200

- 9.1 Copying Data ... 201
- 9.2 Transform Expressions ... 204
  - 9.2.1 Insert ... 204
  - 9.2.2 Delete ... 206
  - 9.2.3 Replace ... 207
  - 9.2.4 Rename ... 209
  - 9.2.5 Transform With ... 211
- 9.3 Updating Expressions ... 215
  - 9.3.1 Changing the World ... 215
  - 9.3.2 Updating Functions ... 219
- 9.4 Questions and Exercises ... 222

### Chapter 10: Searching with XQuery Full Text ... 224

- 10.1 Finding Patterns with XPath ... 224
  - 10.1.1 Searching Substrings ... 225
  - 10.1.2 Regular Expressions ... 226
- 10.2 The Full Text Contains Text Operator ... 230
  - 10.2.1 Scoring ... 233
  - 10.2.2 Any-All Options ... 234
  - 10.2.3 Cardinality ... 236
  - 10.2.4 Positional Filters ... 237
  - 10.2.5 Weighting ... 242
  - 10.2.6 Match Options ... 244
- 10.3 Questions and Exercises ... 249

### Chapter 11: Handling Errors Gracefully ... 251

- 11.1 Documenting Your XQuery with XQDoc ... 252
- 11.2 Catching Mistakes Before You Run Anything ... 257
- 11.3 Catching Errors at Runtime ... 260
- 11.4 Unit Testing with XQuery ... 265
- 11.5 Questions and Exercises ... 266

### Chapter 12: Using XQuery with Other Digital Humanities Tools ... 269

- 12.1 XQuery and JSON ... 271
- 12.2 XQuery and CSV ... 280
- 12.3 XQuery and XSLT ... 290
- 12.4 Questions and Exercises ... 294

### Chapter 13: Conclusion ... 296

- 13.1 XQuery Paralipomena ... 296
  - 13.1. Web Applications ... 297
  - 13.1.2 Databases ... 299
- 13.2 The XQuery Community ... 300
  - 13.2.1 Books ... 300
  - 13.2.2 Digital Forums ... 301
  - 13.2.3 Conferences and Training ... 303
- 13.3 Questions and Exercises ... 304

### Back Matter

- Acknowledgments ... 305
- Notes ... 307
- About the Authors ... 319
- Index ... 321