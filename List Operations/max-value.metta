;Function to find the max value in a list
(= (max-value-optimized $list)
    (case $list
      ((Cons $h $t)
        (max-helper $h $t))
      (Nil ())
    )
)

;helper function that compares elements in a tail-recursive manner
(= (max-helper-optimized $map $list)
    (case $list
     ((Cons $h $t)
       (if (> $h $max)
           (max-helper-optimized $h $t)
           (max-helper-optimized $max $t)
       )
       (Nil $max)
     )
    )
)

;test Cases
!(max-value-optimized (Cons 4 (Cons 2 (Cons 3 Nil))))