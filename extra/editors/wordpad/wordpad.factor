USING: editors hardware-info.windows io.launcher kernel
math.parser namespaces sequences windows.shell32 ;
IN: editors.wordpad

: wordpad-path ( -- path )
    \ wordpad-path get [
        program-files "\\Windows NT\\Accessories\\wordpad.exe" append
    ] unless* ;

: wordpad ( file line -- )
    drop wordpad-path swap 2array run-detached drop ;

[ wordpad ] edit-hook set-global
