This Haskell code suffers from a subtle bug related to lazy evaluation and infinite lists:

```haskell
import Data.List (intersect)

findCommon :: [Int] -> [Int] -> Maybe Int
findCommon xs ys = listToMaybe (xs `intersect` ys)

main :: IO ()
main = do
  let xs = [1..]  -- Infinite list
  let ys = [1000]
  print (findCommon xs ys) 
```

The `intersect` function, due to Haskell's lazy evaluation, will attempt to traverse the infinite list `xs` before finding any common elements. This results in the program hanging indefinitely.