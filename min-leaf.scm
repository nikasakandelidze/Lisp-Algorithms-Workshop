
(define (left-subtree root) (cadr root))
(define (right-subtree root) (caddr root))
(define (value-of-node root) (car root))

(define (min-leaf root)
	(if (null? root)
		0
		(if (null? (cadr root))
			(car root)
			(apply min (map 
				     (lambda(x)(
						+ (car root) (min-leaf x))
				     ) 
				   (cadr root)
				   )
			)
		)
	)
)


;(1 ((2 ((3 ()))) (4 ())))
