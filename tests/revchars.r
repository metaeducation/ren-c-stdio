Rebol [
    File: %revchars.r

    Description: {
        This uses the READ-CHAR interface to reverse the input stream
        on a character-by-character basis.  This is *character* based so
        it assumes the input is UTF-8.  Not to be confused with READ-BYTE
        that does not do UTF-8 decoding.

        Note that if a smart terminal is in use, then the ESCAPE key will
        register as giving back a NULL...the same as end of file.
    }

    Notes: {
        This assumes the input is a validly formed text file (newline
        at end if not zero byte file).  To keep it validly formed, it
        leaves the tail newline at the tail.
    }
]

text: join text! collect [
    until [didn't keep maybe read-char]
]
if not empty? text [
    if newline <> last text [
       fail "No newline at end of input"
    ]
    write-stdout next reverse text
    write-stdout newline
]
