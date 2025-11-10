Rebol [
    title: "Backwards `cat` Program: Print Lines Of Input Reversed"
    file: %tac-while-short.r

    description: --[
        This is a variation of %tac-while-short.r that uses DELIMIT:TAIL
        with NEWLINE instead of WRITE:LINES.

        Note that the behavior of DELIMIT:TAIL is that if you give it an
        empty block, it will return null.

        Also note that DELIMIT:TAIL is evaluative by default.  That doesn't
        matter since we're giving it a block of strings, but you would
        need to pass it a pinned block, e.g. @[...], if you wanted to
        suppress evaluation.
    ]--

    Notes: "See tac/README.md"
]

write stdout opt delimit:tail newline reverse collect [
    while [read-line stdin] keep/
]
