# Haskell Lazy Evaluation Bug

This repository demonstrates a subtle bug in Haskell code that arises from the interaction of lazy evaluation and infinite lists.  The `intersect` function, when used with an infinite list, can cause the program to hang indefinitely.

The bug is explained in `bug.hs` and a corrected version is provided in `bugSolution.hs`. The solution avoids the infinite list problem by using a more appropriate approach for this use case.