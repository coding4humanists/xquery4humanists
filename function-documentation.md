---
layout: page
title: Function Documentation
permalink: /function-documentation/
---

This document describes the built-in facilities for browsing function documentation offered by each of the implementations discussed in the book.

## BaseX

All BaseX functions are documented on the BaseX [Module Library](http://docs.basex.org/wiki/Module_Library) page. The BaseX GUI does not expose function documentation. 

## eXist

The eXist [XQuery Function Documentation](https://exist-db.org/exist/apps/fundocs/index.html) application lets you search or browse through all of the built-in functions, extension functions that ship with eXist, and modules that you have annotated with XQDoc (see Chapter 11 for discussion of XQDoc). This utility is included in the eXist distribution, accessible from the Dashboard.

In addition, eXist offers function documentation in several development environments:

- In eXide, you can look up a function's documentation by placing the cursor in the function name and selecting Navigate > Function doc, or using the keyboard shortcut of F1. A pop-up window will appear with documentation about any matching functions.
- In Atom, with the atom-existdb package installed, Atom monitors your keystrokes, and if it detects that you are typing an XQuery function, it will display a hovering window below the cursor containing the documentation for the function.
- See oXygen below for directions on how to configure it to suggest eXist functions as you type them and display compact documentation about each function.

## oXygen

When editing XQuery in oXygen, with Saxon or eXist selected as the XQuery validation engine (configured via Preferences > XQuery > XML > XSLT-FO-XQuery > XQuery > Validation engine), you can invoke oXygen's Content Completion feature (via Document > Content Completion > Start Content Completion) to suggest functions as you type them and display compact documentation about each function.

## Saxon

Saxon's [Function Library](https://www.saxonica.com/html/documentation/functions/) page lists documentation about standard and extension functions.