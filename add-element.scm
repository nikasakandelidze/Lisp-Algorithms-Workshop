

(define (add-element sequence element index) 
	(if (null? sequence)
		(list element)
		(if (= 1 index)
			(cons (car sequence) (cons element (cdr sequence)))
			(cons (car sequence) (add-element (cdr sequence) element (- index 1)))
		)
	)
)
