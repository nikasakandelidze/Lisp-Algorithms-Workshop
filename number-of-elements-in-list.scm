

(define (size-of-list sequence)
	(if (null? sequence)
		0
		(+ 1 (size-of-list (cdr sequence)))
	)
)
