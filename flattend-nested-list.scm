

(define (flatten sequence)
	(if (null? sequence)
		'()
		(if (list? (car sequence))
			(append (flatten (car sequence)) (flatten (cdr sequence)))
			(cons (car sequence) (flatten (cdr sequence)))
		)
	)

)
