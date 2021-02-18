;;;;;;;;;;;;;;;;;;;
;;;;;;;;avarage
;;;;;;;;;;;;;;;;;;;

(define (avarage list_arg)
	(if (null? list_arg) 
	    0
	    (/ (apply + list_arg) (length list_arg))))
