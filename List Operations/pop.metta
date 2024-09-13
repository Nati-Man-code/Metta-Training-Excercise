(= (pop Nil) Nil)
(= (pop (Cons $x $xs)) $xs)

;test Cases
!(pop Nil)
!(pop (Cons 1 (Cons 2 Nil)))
!(pop (Cons A (Cons B (Cons C Nil))))