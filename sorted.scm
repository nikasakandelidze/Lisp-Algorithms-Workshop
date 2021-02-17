;;;;;;;;;;;;
;;;;;;;;Write a function that returns true if passed list is sorted and false if not
;;;;;;;;;;;;
;;;;;;;;;;;;

(define (sorted? list_arg)
	(or (< (length list_arg) 2)
	    (and (<= (car list_arg) (cadr list_arg)) (sorted? (cdr list_arg)))))
