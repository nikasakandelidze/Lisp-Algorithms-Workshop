
(define (split-first-n sequence n)
  	(if (= n (length sequence))
	  (list sequence (list))
	  (if (null? sequence)
	  	'()
		(if (zero? n)
			(list () sequence)
			(let ((rest (split-first-n (cdr sequence) (- n 1))))
				(list (cons (car sequence) (car rest)) (cadr rest))						
			)
		))))  


(define (rotate-left sequence n)
	(if (null? sequence)
		'()		
		(append  (cadr (split-first-n sequence n)) (car (split-first-n sequence n)))))
