;;Takes a list of strings and generates a new list of the
;;same length, where the nth element of the new list is
;;the running concatenation of the original list's first
;;n elements.


(define (concatenations_helper current list_arg)
	(if (null? list_arg)
	      '()
	     (cons 
	       (string-append  current (car list_arg)) 
	       (concatenations_helper (string-append current (car list_arg)) (cdr list_arg)))))


(define (concatenations list_arg)
	(concatenations_helper "" list_arg))

