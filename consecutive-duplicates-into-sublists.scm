

(define (cons-duplicates-in-sublists sequence)
	(if (null? sequence)
		'()
		(if (= 1 (length sequence))
			(list sequence)
			(let ((rest (cons-duplicates-in-sublists (cdr sequence))))
			 	(if (list? (car rest))
					(if (eq? (car sequence) (car (car rest)))
						(cons (cons (car sequence) (car rest)) (cdr rest))  
					  	(cons (list (car sequence)) rest)
					)
				)
			)

			)))


(define (cons-encoding sequence)
	(if (null? sequence)
		'()
		(map (lambda (x) (list (length x) (car x))) (cons-duplicates-in-sublists sequence))  
	))
