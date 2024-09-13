;Types
(: List Type)
(: End List)
(: Tuple (-> $a List List))

;a function to append an element to a list using Tuple
(: append (-> List $a List))
(= (append End $x) (Tuple $x End))
(= (append (Tuple $h $t) $x) (Tuple $h(append $t $x)))

;Test case
!(append (Tuple 1 (Tuple 2 (Tuple 3 End))) 4)
!(append (Tuple A (Tuple B End)) C)
