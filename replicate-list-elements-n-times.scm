
(define (expand character n)
	(if (zero? n)
		'()
		(cons character (expand character (- n 1)))
	)

)

(define (replicate sequence n)
	(if (null? sequence)
		'()
		(apply append (map (lambda (x)(expand x n)) sequence))
	)

)
