;; flatten passed list, no matter the nested level

(define (flatten list_arg)
	(if (null? list_arg)
	 	'()
		(if (not (list? list_arg))
			(list list_arg)
			(apply append (map flatten list_arg)))))
