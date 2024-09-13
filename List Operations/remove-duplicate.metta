(: List type)
(: Empty List)
(: Node (-> $a List List))

;a function to check if an element in a list
(: contains (-> $a List Bool))
(= (contains $a Empty) False)
(= (contains $a (Node $x $xs))
    (if (== $a $x)
        True
        (contains $a $xs)
    )
)

;a function to remove duplicates from a list
(: removeDuplicates (-> List List))
(= (removeDuplicates Empty) Empty)
(= (removeDuplicates (Node $x $xs))
    (if (contains $x $xs)
         (removeDuplicates $xs)
         (Node $x (removeDuplicates $xs))
    )
)

;test case
! (removeDuplicates (Node 1 (Node 2 (Node 2 (Node 3 Empty)))))
! (removeDuplicates (Node 4 (Node 4 (Node 4 (Node 5 Empty)))))
!(removeDuplicates (Node A (Node B (Node A (Node C Empty)))))