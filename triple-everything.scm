;;;;;;;;;;;;;;;
;;;;;;;;; Triple every elemtn of number list passed
;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;

(define (triple-all sequence)
	(if (null? sequence)
	    '()
	     (cons  (* 3 (car sequence)) (triple-all (cdr sequence)))
	    ))
