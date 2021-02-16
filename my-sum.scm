;;;;;;;;;;;;;;;;
;;;;General: definition of "my-sum" recursive function
;;;;;;;;;;;;;;;;
;;;;Problem: Write a recursive function that sums the elements of the list passed to it 
;;;;;;;;;;;;;;;;
;;;;;;;;;; Test cases:
;;;;;;;;;; Input (1 2 3 4) ==> 10
;;;;;;;;;; Input () ==> 0

(define (my-sum list_arg)
  	(if (null? list_arg) 
	  0
	  (+ (car list_arg) (my-sum (cdr list_arg)))))


(my-sum '(1 2 3 4))
