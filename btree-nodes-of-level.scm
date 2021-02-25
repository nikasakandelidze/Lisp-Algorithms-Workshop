
(define (value-of-node node)(cadr node))
(define (left-subtree node)(car node))
(define (right-subtree node)(caddr node))


(define (btree-nodes-at-level node level)
	(if (null? node)
		'()	
		(if (zero? level)
			(list (value-of-node node))
			(append (btree-nodes-at-level (left-subtree node) (- level 1))
				(btree-nodes-at-level (right-subtree node) (- level 1)))	
		)
	))
