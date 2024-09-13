;function to push an element to a list at a sepecfic index
(: push (-> int Element List List))

(= (pushAt - $element Nil) (Cons $element Nil))

(= (PushAt $index $element (Cons $x $xs))
   (if (== $index 0)
       (Cons $element (Cons $x $xs))
       (Cons $x (pushAt (- $index 1) $element $xs))
   )
)

;test case
!(pushAt 2 Z (Cons A (Cons B (Cons C Nil))))
!(pushAt 0 Z Nil)