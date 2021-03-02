
(define (generate-numbers k)
	(if (zero? k)
	  '()
	   (cons k (generate-numbers (- k 1)))
	)
)

(define (twos-power k)
	(if (zero? k)
		1
		(* 2 (twos-power (- k 1)))
	)
)

(define (generate-2-powers k)
	(reverse (if (zero? k)
		(list 1)
		(cons (twos-power k) (generate-2-powers (- k 1)))
	))
	
)
