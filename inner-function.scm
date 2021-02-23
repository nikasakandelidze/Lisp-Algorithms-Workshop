;;;;;;;;;;;Inner functions;;;;;;;;;;;;;;;;;;;;;
;;; Inner functions are availabe in Kawa
(define (transalte numbers delta)
	(define (shift number)
		(+ number delta))
	 (map shift numbers))


;;;;;;;;;;;Anonymous functions;;;;;;;;;;;;;;;;;
;;; Anonymous functions are also available in Kawa
(define (translate numbers delta)
	(map (lambda (number) (+ delta number)) numbers))
