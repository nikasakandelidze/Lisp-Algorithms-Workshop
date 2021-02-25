


(define (helper sequence n temp)
	(if (null? sequence)
		'()
		(if (= 1 temp)
			(helper (cdr sequence) n n)
			(cons (car sequence) (helper (cdr sequence) n (- temp 1))) 
		)
  	)	
)

(define (drop-every-nth-element sequence n) (helper sequence n n))
