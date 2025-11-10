Rebol [
    title: "Backwards `cat` Program: Print Lines Of Input Reversed"
    file: %tac-insist.r

    description: --[
        This version of tac is based on the INSIST function, which is the
        renamed version of historical arity-1 Redbol "UNTIL":

          https://rebol.metaeducation.com/t/mismatch-until-and-while/594

        INSIST will evaluate an expression until it is non-NULL.
    ]--

    notes: "See tac/README.md"
]

write:lines stdout reverse collect [
    insist [not keep opt read-line stdin]
]
