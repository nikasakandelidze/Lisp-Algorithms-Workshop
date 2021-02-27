

(define (add-to-btree element btree)
	(if (null? btree)
	  (list (list) element (list))
		(if (< element (cadr btree))			
			(append (list (add-to-btree element (car btree))) (list (cadr btree)) (list (caddr btree)))		
			(append (list (car btree)) (list (cadr btree)) (list (add-to-btree element (caddr btree))))
		)
	)
)
