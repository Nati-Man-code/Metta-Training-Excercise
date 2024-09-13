;Merg Sort
(= (sort $list)
(case $list
(
    ((Cons $x $xs)
      (let ($mid (length $list))
        (let ($left (take $mid $list))
          (let ($right (drop $mid $list))
            (merge (sort $left) (sort $right))
          )
        )
      )
    )
    (Nil Nil)
)
)
)

;function to merge two sorted Lists
(=(merge $left $right)
(case $left
(
    ((Cons $lh $lt)
      (case $right
      (
        ((Cons $rh $rt)
          (if (< $lh $rh)
            (Cons $lh (merge $lt $right))
            ((Cons $lh (merge $left $rt ))
            )
          )
          (Nil $left)
        )
      )
      )
      (Nil $right)
    )
)
))