;; ((left) value (right))

(define (left-subtree node) (car node))

(define (right-subtree node)(caddr node))

(define (count-leaves node)
	(if (null? node)
		0
		(if (and (null? (right-subtree node)) (null? (left-subtree node)))
			1
			(if (and (not (null? (right-subtree node))) (not (null? (left-subtree node))))
				(+ (count-leaves (right-subtree node)) (count-leaves (left-subtree node)))
				(if (not (null? (right-subtree node)))
					(count-leaves (right-subtree node))
					(count-leaves (left-subtree node))
				)))))
