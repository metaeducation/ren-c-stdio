Rebol [
    title: "Backwards `cat` Program: Print Lines Of Input Reversed"
    file: %tac-while-short.r

    description: --[
        This variation of the `tac` program uses the fact that while loops
        can take functions as their body, and they will pass the result of
        the condition to the function each time through the loop.

        This is a candidate for best "expert solution" to this problem.
    ]--

    notes: "See tac/README.md"
]

write:lines stdout reverse collect [
    while [read-line stdin] keep/
]
