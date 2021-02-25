

(define (slice sequence start end)
	(if (or (> start end) (null? sequence))
		'()			
		(if (<= start end)
		    (if (> start 1)
			(slice (cdr sequence) (- start 1) (- end 1))		
		    	(if (>= end 1)
				(cons (car sequence) (slice (cdr sequence) start (- end 1)))
	  	        )
		    ))))

