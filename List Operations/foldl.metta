;a foldl function using pattern matching and tail recursion
(= foldl $f $acc Nil)

(= (foldl $f $acc (cons $x $xs))
   (foldl $f ($f $acc $x) $xs)
)

;an alternative version where the accumulator is optional and defaults to zero
(= (foldl-no-acc $f Nil) Nil)

(= (foldl-no-acc $f (cons $x $xs))
      (foldl $f 0 (cons $x $xs))
)

;a function to use as a test case
(= (add $x $y) (+ $x $y))

;test case 
!(foldl add 0 (cons 1 (cons 2 (cons 3 Nil))))

;Test case without initial accumulator 
!(foldl-no-acc add (cons 1 (cons 2 (cons 3 Nil))))