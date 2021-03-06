! Copyright (C) 2011 Erik Charlebois.
! See http://factorcode.org/license.txt for BSD license.
USING: arrays help.markup help.syntax math
sequences.private vectors strings kernel math.order layouts
quotations generic.single ;
IN: readline

HELP: readline
{ $values
    { "prompt" string }
    { "str" string }
}
{ $description "Read a line from using readline." } ;

HELP: set-completion
{ $values
    { "quot" "a quotation with stack effect ( str n -- str )"}
}
{ $description "Set the given quotation as the completion hook for readline. The quotation is called with the string to complete and the index in the completion list to return. When all completions have been returned, returning " { $snippet "f" } " terminates the loop." }
{ $examples
    { $example "USING: readline sequences combinators kernel ;"
               "[ nip [ \"keep\" \"dip\" ] ?nth ] set-completion"
               ""
    }
} ;

ARTICLE: "readline" "Readline"
{ $vocab-link "readline" }
;


ABOUT: "readline"
