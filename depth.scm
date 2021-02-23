

(define (depth list_arg)
	(if (or (null? list_arg) (not (list? list_arg)))
		0
		(+ 1 (apply max (map depth list_arg)))))
