

(define (freq element seq)
	(if (null? seq)
		0
		(if (eq? element (car seq))
			(+ 1 (freq element (cdr seq)))
			(freq element (cdr seq))
		)
	)
)


(define (helper i seq)
	(if (> i 10) 
		'()
		(cons (freq i seq) (helper (+ i 1) seq)) 
	)
)


(define (frequencies seq)
	(helper 0 seq)
)
