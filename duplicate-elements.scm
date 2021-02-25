

(define (duplicate-elements sequence)
	(if (null? sequence)
		'()
		(apply append (map (lambda(x)(list x x)) sequence))
	)

)
