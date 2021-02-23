;;;;Scheme built-in function implementations


;;;;; Define function that applies passed function to each and ecvery element of first list arugment
(define (unary-map func list_arg)
	(if (null? list_arg)
		'()
		(cons (func (car list_arg)) (unary-map func (cdr list_arg)))))





