

(define (eliminate-consecutive-dupls sequence)
	(if (null? sequence)
		'()
		(if (= 1 (length sequence))
			sequence
		  	(if (eq? (car sequence) (cadr sequence))
				(eliminate-consecutive-dupls (cdr sequence))	
				(cons (car sequence) (eliminate-consecutive-dupls (cdr sequence))
			)
		)
	)))
