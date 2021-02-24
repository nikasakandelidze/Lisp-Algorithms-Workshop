;;;;;Permutations of input list

;;;;;; (1 2 ) ====> (1 2) (2 1)
;;;;;; -------------------------
;;;;;; 

(define (remove element list_arg)
	(if (null? list_arg)
		'()
		(if (eq? element (car list_arg))
			(remove element (cdr list_arg))
			(cons (car list_arg) (remove element (cdr list_arg))))))

(define (permutations list_arg)
	(if (null? list_arg)
		'(())
		 (apply append (map
				 (lambda (element) 
				   (map (lambda (permutation)(cons element permutation)) (permutations (remove element list_arg)))
				 ) 
			        
				 list_arg))))
