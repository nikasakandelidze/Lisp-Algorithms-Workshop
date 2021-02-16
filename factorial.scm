;;;;;;;;;;
;;;Write a factorial function in Kawa
;;;;;;;;;;
;;;;;;;;;;
;;;;;;; Test cases:
;;;;;;; Input 0 ==> 1
;;;;;;; Input 1 ==> 1
;;;;;;; Input 3 ==> 6

(define (factorial n)
   (if (or (zero? n) (= 1 n))
     	1
	(* n (factorial (- n 1)))))

(factorial 3)



