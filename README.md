# xquery4humanists

This repository contains the source files for the companion website for the XQuery for Humanists book.

To aid in the creation/editing of this site and its mentions in the text, we list below all the phrases in the book that mention the companion site.

- Introduction
    - Companion website at [xquery.forhumanists.org](http://xquery.forhumanists.org/)
    - Full set of downloadable examples
    - List of errata found in the book after it goes to press
    - Extensive information about the four software packages. We put that information on the website rather than in the book since these software packages will continue to evolve and compete for users like us.
- Chapter 2
    - In order to support your learning of any of these four XQuery environments, the companion website offers a downloadable set of the code listed in this book. 
    - It also lists where an implementation diverges from the standards described in the book, and points to alternative facilities they offer for accomplishing the same objectives. 
    - Also, while the instructions for downloading these XQuery environments work as this book goes to press and should continue to work for some time, we will endeavor to maintain links to the latest information on the companion website.
- Chapter 6
    - Our companion website lists information about each XQuery implementation's built-in facilities for browsing functions.
    - Read the "Function Documentation" article on our companion website to explore your XQuery implementation's built-in tools for browsing function documentation and looking up functions as you type.
- Chapter 9 (XQuery Update)
    - Consult our companion website for implementation-specific notes about this chapter and links to the documentation for your processor. 
- Chapter 10 (XQuery Full Text)
    - eXist has its own implementation-specific full text search facility, which is discussed in the book's companion website. 
- Chapter 11
    - Visit our companion website to look up what tools your XQuery processor offers to create documentation from your type-annotated and XQDoc-commented comments.
    - Check our companion website to see which XQuery editors build XQLint into the error reporting.
    - Consult the companion website to see what unit testing frameworks are compatible with your XQuery processor.
- Chapter 13
     - Consult our companion website's chart indicating the conformity of various XQuery processors with XQuery 3.1 and related standards. How does your XQuery processor fare in this measure?

To preview the site locally, install [Jekyll](https://jekyllrb.com/) (see https://jekyllrb.com/docs/installation/):

```bash
gem install bundler jekyll
git clone https://github.com/coding4humanists/xquery4humanists
cd xquery4humanists
bundle exec jekyll serve
```

Then browse to `http://localhost:4000/`.