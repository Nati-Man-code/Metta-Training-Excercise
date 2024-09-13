;a filter function to represent list structure
(= (filter $fun $list)
   (case $list
       (  ;if the list is non-empty , deconstructing using pair
          (pair $head $tail)
          (if ($fun $head)
              (pair $head (filter $fun $tail))
              (filter $fun $tail))
          )
          ;base case - empty list return itself
          (Empty Empty)
    )
)

;a function to check a number is odd  
(= (is-odd $x)
   (== (% $x 2) 1)
)

;Test case
!(filter is-odd (pair 3(pair 6 (pair 7 (pair 10 Empty)))))