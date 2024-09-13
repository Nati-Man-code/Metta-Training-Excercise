;a function to foldRight the list
(: foldr (-> $f $acc List List))

;if the list is empty return the accumulator
(= (foldr $f $acc Nil) $acc)

;Recursively to apply the function to the head and fold the rest of the list
(= (foldr $f $acc (cons $x $xs))
   ($f $x (foldr $f $acc $xs))
)

;Test case
;a simple function to add two numbers
(= sum  $x $y ) (+ $x $y)
!(foldr sum 0 (cons 1( cons 2 (cons 3 (cons 4 Nil)))))