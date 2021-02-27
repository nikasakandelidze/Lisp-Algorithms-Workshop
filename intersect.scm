
(define (contains x sequence)
	(if (null? sequence)
		#f
		(or (eq? x (car sequence)) (contains x (cdr sequence)))
	)
)

(define (intersect first second)
	(if (null? first)
		'()
		(if (contains (car first) second)
			(cons (car first) (intersect (cdr first) second))
			(intersect (cdr first) second)
		)
	)
)
