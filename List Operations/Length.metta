;List Type
(: MyList Type)
(: Empty MyList)
(: Node (-> $a MyList MyList))

;Length Function
(: myLengrh (-> MyList Number))
(= (myLength Empty ) 0)
(= (myLength (Node $x $xs)) (+ 1 (myLength $xs)))

;Test Cases
!(myLength Empty)
!(myLength (Node A Empty))
!(myLength (Node A (Node B (Node C Empty))))