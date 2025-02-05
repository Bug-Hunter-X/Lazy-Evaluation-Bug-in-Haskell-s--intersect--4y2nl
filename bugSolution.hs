The solution involves avoiding the use of infinite lists with `intersect`. A more suitable approach is to iterate through the finite list and check for membership in the potentially infinite list. Here's a corrected version:

```haskell
import Data.Maybe (listToMaybe)

findCommon :: [Int] -> [Int] -> Maybe Int
findCommon xs ys = listToMaybe (findCommon' xs ys)
  where
    findCommon' [] _ = []
    findCommon' (x:xs') ys = if elem x ys then [x] else findCommon' xs' ys

main :: IO ()
main = do
  let xs = [1..] -- Infinite list
  let ys = [1000]
  print (findCommon xs ys)
```

This revised `findCommon` function efficiently checks for common elements without causing the program to hang.