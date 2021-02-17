;;;;;;;;;;;;;;;;;;
;;;;;;;;;Generic sort, that can be used with any type of lists
;;;;;;;;;comp is a predicate function passed from the client
;;;;;;;;;;;;;;;;;;

(define (sorted? seq comp)
	(or (< (length seq) 2)
 	 (and (cmp (car seq) (cadr seq)) (sorted? (cdr seq)))))
