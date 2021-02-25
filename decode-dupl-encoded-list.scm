

(define (expand character n)
	(if (zero? n)
		'()
		(cons character (expand character (- n 1)))
	))


(define (decode sequence)
	(apply append (map (lambda (x)
	       (if (list? x)
			(expand (cadr x) (car x))	
			(list x)
		)
	) sequence)))
