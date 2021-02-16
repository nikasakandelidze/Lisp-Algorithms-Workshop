;;;;;;;;;
;;;;;;write a fibonacci function in Kawa
;;;;;;;;;
;;;;;;;;;
;;;;; Input 1 ==> 1
;;;;; Input 0 ==> 0
;;;;; Input 10 ==> 55

(define (fibonacci x)
	(if (< x 2)
	  x
	  (+ (fibonacci (- x 1)) (fibonacci (- x 2)))))


