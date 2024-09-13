;Types
(: Tree Types)
(: Value Types)

;empty Tree
(: EmptyTree Tree)

;a node to point to a value and has left and right
(: Node (-> value Tree Tree Tree))

;test
(: Val1 Value)
(: Val2 Value)
(: Val3 Value)
(: Val4 Value)

;Example binary tree
!(Node Val1 (Node Val2 EmptyTree EmptyTree) 
            (Node Val3 EmptyTree (Node Val4 EmptyTree EmptyTree))
)

;Function to get the left, Right, value and has a node two children of a binary tree
;Get the left child
(= (getleft $tree)
   (case $tree
        (
            ((Node $Val $left $right) $left)
            (() ())
        )
   )
)

;Get the right child
(= (getright $tree)
   (case $tree
        (
            ((Node $Val $right $left) $right)
            (() ())
        )
   )
)

;Get the value 
(= (getvalue $tree)
   (case $tree
         (
            ((Node $Val $right $left) $Val)
            (() ())
         )
   )
)

;Check if a node has exactly two children
(= (hastwochildren $tree)
   (case $tree
         (
            ((Node $Val $left $right)
             (and 
               (not (== $left EmptyTree))
               (not (== $right EmptyTree))
             )
            (() false)
            )
         )
   )
)

;Test case
!(getleft (Node Val1(Node Val2 EmptyTree EmptyTree)
          (Node Val3 EmptyTree (Node Val4 EmptyTree EmptyTree))
          )
)
!(getright (Node Val1(Node Val2 EmptyTree EmptyTree)
          (Node Val3 EmptyTree (Node Val4 EmptyTree EmptyTree))
          )
)
!(getvalue (Node Val1(Node Val2 EmptyTree EmptyTree)
          (Node Val3 EmptyTree (Node Val4 EmptyTree EmptyTree))
          )
)
!(hastwochildren (Node Val1(Node Val2 EmptyTree EmptyTree)
          (Node Val3 EmptyTree (Node Val4 EmptyTree EmptyTree))
          )
)
!(hastwochildren (Node Val1(Node Val2 EmptyTree EmptyTree) EmptyTree))