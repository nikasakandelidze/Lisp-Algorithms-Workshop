

(define (last-but-one sequence)
	(if (null? sequence)
		'()
		(if (= 1 (length sequence))
			(car sequence)
			(if (null? (cddr sequence))
				(car sequence)
				(last-but-one (cdr sequence))
			)
		)
	)
)
