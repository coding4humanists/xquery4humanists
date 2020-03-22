xquery version "3.1";

declare variable $book-count := 100;

fn:concat("You have ", $book-count, " books in the database.")