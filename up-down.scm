


(define (is-up-down? sequence comparator)
	(if (or (null? sequence) (= 1 (length sequence)))
		#t
		(and (comparator (car sequence) (cadr sequence)) (is-up-down? (cdr sequence) (lambda (first second) (comparator second first)))
	)
)
