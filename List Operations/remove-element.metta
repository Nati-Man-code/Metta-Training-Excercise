;remove element function
(: remove-item (-> $elem List List))

(= (remove-item $elem Nil) Nil)

(= (remove-item $elem (Cons $h $t))
   (if (== $h $elem)
       (remove-item $elem $t)
       (Cons $h (remove-item $elem $t))
   )
)

;test case 
!(remove-iterm 1 (Cons 1 (Cons 2 (Cons 3 Nil))))
!(remove-item 2 (Cons 1 (Cons 2 (Cons 3(Cons 4 Nil)))))
!(remove-item 5 (Cons 1 (Cons 2 (Cons 3 Nil))))