

(define (split sequence n)
	(if (null? sequence)
	  	'()
		(if (= 1 n)
			(list (list (car sequence)) (cdr sequence))
			(let ((rest (split (cdr sequence) (- n 1))))
			 (append (list (cons (car sequence) (car rest))) (cdr rest))  
			)		
		)))
