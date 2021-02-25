

(define (reverse-list sequence)
	(if (null? sequence)
		'()
		(append (reverse-list (cdr sequence)) (list (car sequence)))
	)

)
