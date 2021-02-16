;;;;;;;;;;;;;
;;;;;;; General: flatten-list "flattens" passed nested list into 1 layered list 
;;;;;;;;;;;;;
;;;;;;; Problem: Write a function that flattenes passed list
;;;;;
;;;;;;;;;;;;; Test cases:
;;;;; input (1 (2)) ==> (1 2)
;;;;; input ((1) (2)) ==> (1 2)
;;;;; input () ==> ()
;;;;; input null ==? ()


(define (flatten list_arg)
  	(if (null? list_arg)
	  '()
	  (if (not (list? list_arg)) 
	     (list list_arg)  	
	     (append (flatten (car list_arg)) (flatten (cdr list_arg))     
	  )
	)))

(flatten '(1 (2 (3 (4) (5 (6))))))


