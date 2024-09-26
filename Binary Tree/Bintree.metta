; Define types for Tree and Value
(: Tree Type)
(: Value Type)

; Define an empty tree (leaf)
(: EmptyTree Tree)

; Define a tree node that points to a value and has left and right subtrees
(: Node (-> Value Tree Tree Tree))

; Define some test values for the tree nodes
(: val1 Value)
(: val2 Value)
(: val3 Value)
(: val4 Value)

; Example binary tree:
! (Node val1 (Node val2 EmptyTree EmptyTree) (Node val3 EmptyTree (Node val4 EmptyTree EmptyTree)))

; Functions to get left child, right child, and value from a node

; Get the left child of a node
(=(getLeft $tree)
  (case $tree
    (
      ((Node $val $left $right) $left)
      (() ())
    )
  )
)

; Get the right child of a node
(=(getRight $tree)
  (case $tree
    (
      ((Node $val $left $right) $right)
      (() ())
    )
  )
)

; Get the value of a node
(=(getValue $tree)
  (case $tree
    (
      ((Node $val $left $right) $val)
      (() ())
    )
  )
)

; Function to calculate the maximum depth of a binary tree
(=(maxDepth $tree)
  (case $tree
    (
      ((Node $val $left $right)
        (+ 1 (max (maxDepth $left) (maxDepth $right)))  ; 1 + max of left and right subtree depths
      )
      (EmptyTree 0)  ; If it's an empty tree, depth is 0
    )
  )
)

; Test cases
! (getLeft (Node val1 (Node val2 EmptyTree EmptyTree) (Node val3 EmptyTree (Node val4 EmptyTree EmptyTree))))
! (getRight (Node val1 (Node val2 EmptyTree EmptyTree) (Node val3 EmptyTree (Node val4 EmptyTree EmptyTree))))
! (getValue (Node val1 (Node val2 EmptyTree EmptyTree) (Node val3 EmptyTree (Node val4 EmptyTree EmptyTree))))

;max depth test case
! (maxDepth (Node val1 (Node val2 EmptyTree EmptyTree) (Node val3 EmptyTree (Node val4 EmptyTree EmptyTree))))
! (maxDepth (Node val1 (Node val2 (Node val5 EmptyTree EmptyTree) EmptyTree) EmptyTree))
! (maxDepth EmptyTree)
