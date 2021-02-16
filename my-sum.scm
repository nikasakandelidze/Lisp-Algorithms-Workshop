;;;;;;;;;;;;;;;;
;;;;definition of "my-sum" recursive function
;;;;;;;;;;;;;;;;

(define (my-sum list_arg)
  	((null? list_arg) 
	  0
	  (+ (car list_arg) (my-sum (cdr list_arg)))))


(my-sum '(1 2 3 4))
