
;;;;; power set of list

(define (power-set list_arg)
	(if (null? list_arg)
		'(())
		(let ((set-of-rest (power-set (cdr list_arg))))
			(append set-of-rest (map (lambda (element) (cons (car list_arg) element)) set-of-rest)))))
