

(define (copy n res)
	(if (zero? n)
		(list res)
		(cons res (copy (- n 1) res))
	)
)


(define (multiply n sequence)
	(if (null? sequence)
		'()
		(apply append (map  (lambda(x)(copy n x)) sequence))
	)
)
