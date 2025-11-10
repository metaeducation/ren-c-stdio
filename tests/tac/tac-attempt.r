Rebol [
    title: "Backwards `cat` Program: Print Lines Of Input Reversed"
    file: %tac-insist.r

    description: --[
        This variation of the `tac` program uses the "loop once" construct
        known as ATTEMPT in Ren-C:

          https://rebol.metaeducation.com/t/repeat-1-attempt/2480

        Because it lets you put your request to repeat (AGAIN) anywhere you
        want, it's a good choice for structuring more complex code, such
        as when you want to do error handling.
    ]--

    notes: "See tac/README.md"
]

write:lines stdout reverse collect [
    attempt [
        let line: read-line stdin except e -> [
            print "Antiform ERROR! returned by READ-LINE"
            quit 1
        ]
        if line [
            keep line
            again
        ]
    ]
]
