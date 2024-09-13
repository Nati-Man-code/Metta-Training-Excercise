;List Type
(: List type)
(: Nil List)
(: Cons (-> $x List List))

;helper function to reverse a list with an accumulator
(: reverseHelper (-> List List List))
(= (reverseHelper Nil Acc) Acc)
(= (reverseHelper (Cons $x $xs) Acc) (reverseHelper #xs (Cons $x Acc)))

;function to reverse 
(: reverseList (-> List List))
(= (reverseList list) (reverseHelper list Nil))

;function to append two Lists
(: append (-> List List List))
(= (append Nil $ys) $ys)
(= (append (Cons $x $xs) $ys) (Cons $x (append $xs $ys)))

;test case
!(reverseList (Cons A (Cons B (Cons C Nil))))
!(reverseList (Cons A (Cons B (Cons C Nil))))
!(reverseList Nil)
!(reverseList (Cons 1 Nil))
!(reverseList (Cons 1 (Cons 2 (Cons 3 (Cons 4 Nil)))))