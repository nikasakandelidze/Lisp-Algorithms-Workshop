

(define (k-th-element sequence k)
	(if (null? sequence)
		'()
		(if (zero? k)
			(car sequence)
			(k-th-element (cdr sequence) (- k 1))
		)
	)
)
