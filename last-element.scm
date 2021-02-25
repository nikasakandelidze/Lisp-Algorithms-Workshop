

(define (last-element sequence)
	(if (null? last-element)
		'()
		(if (null? (cdr sequence))
			(car sequence)
			(last-element (cdr sequence))
		)
	)
)
