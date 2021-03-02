
(define (get-list-of-nums n)
	(if (zero? n)
		'()
		(cons (remainder n 10) (get-list-of-nums (quotient n 10))) 
	)
)

(define (is-narcis? n)
	(if (zero? n)
		#t
		(eq? (apply + (map (lambda(x)(expt x (length (get-list-of-nums n)))) (get-list-of-nums n))) n)
	)
)
