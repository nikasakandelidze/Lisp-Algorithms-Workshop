


(define (without-first sequence)
	(if (null? sequence)
		'()
		(cdr sequence)))

(define (without-last sequence)
	(if (null? sequence)
		'()
		(if (null? (cdr sequence))
			'()
			(cons (car sequence) (without-last (cdr sequence)))
		)
	)
)


(define (two-lists-equal? first second)
	(if (and (null? first) (not (null? second)))
		#f
		(if (and (null? second) (not (null? first)))
			#f
			(if (and (null? first) (null? second))
				#t
				(and (eq? (car first) (car second)) (two-lists-equal? (cdr first) (cdr second)))
			)
		)
	)
)

(define (is-palindrome? sequence)
	(if (or (null? sequence) (= 1 (length sequence)))
		#t
		(two-lists-equal? sequence (reverse sequence))					
	)
 	
)
