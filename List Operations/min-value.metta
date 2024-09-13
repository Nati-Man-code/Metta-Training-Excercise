;a function to implement the min-value
(: min-value (->List Number))

(= (min-value Nil) (error "Empty list has no minimum"))
(= (min-value (Cons $x Nil)) $x)
(= (min-value (Cons $x (Cons $y $ys)))
    (if (< $x $y)
        (min-value (Cons $x $ys))
        (min-value (Cons $y $ys))
    )
)

;test Cases
!(min-value (Cons 1 (Cons 2 (Cons 3  Nil))))
!(min-value (Cons 4 (Cons 2 (Cons 1 Nil))))
!(min-value (Cons 2 (Cons 5 (Cons 3 (Cons 4 Nil)))))