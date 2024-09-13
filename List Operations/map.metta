;map function that work on Lists
(: map (-> (-> $a $b) (List $a) (List $b)))\

(= (map $func Nil) Nil)
(= (map $func (Cons $head $tail))
     (Cons ($func $head) (map $func $tail))
)

;new triple function
(= (triple $num) (* $num 3))

;Testing the map function with the triple function
!(map triple (Cons 1 (Cons 2 (Cons 3 Nil))))
