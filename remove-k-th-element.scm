

(define (remove-kth-element sequence k)
	(if (null? sequence)
		'()
		 (if (= 1 k)
			(cdr sequence)
			(cons (car sequence) (remove-kth-element (cdr sequence) (- k 1)))
		 )
	)

)  
