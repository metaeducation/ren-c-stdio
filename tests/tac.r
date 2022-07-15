Rebol [
    Title: "Backwards `cat` Program: Print Lines Of Input Reversed"
    File: %tac.r

    Description: {
        This is a simple tool for piping that accepts standard input and
        reads lines until end of file, at which point it outputs the
        lines in reverse.

        https://en.wikipedia.org/wiki/Cat_(Unix)#tac

        The real `tac` also has a mode for operating on files, in which
        it does not need to collect the lines in memory until the end
        of the piped input stream.  For the moment, this only implements
        the pipe version to be used in stdio redirection testing.
    }
]

try write-stdout delimit/tail newline reverse collect [
    until [not try keep read-line]
]
