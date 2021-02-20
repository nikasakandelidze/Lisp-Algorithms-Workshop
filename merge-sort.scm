Function: merge
---------------
;;Takes the two lists, each of which is assumed to be sorted
;;according to the specified comparator function, and synthesizes
;;an fresh list which is the sorted merge of the incoming two.
;;If one of the lists is empty, then merge can just return the
;;other one. If not, then the specified comp is used to determine
;;which of the two cars deserves to be at the front. Recursion (what else?)
;;is then used to generate the merge of everything else, and the winning

(define (merge first_list second_list comparator)
       (if (null? first_list)
	   second_list
	   (if (null? second_list)
	       first_list
               (if (comparator (car first_list) (car second_list))
		    (cons  (car first_list)  (merge (cdr first_list) second_list comparator))  
		    (cons (car second_list)  (merge first_list (cdr second_list) comparator))
	       ))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;Function that returns first k elements of specified list

(define (first-k-elements list_arg k)
	(if (> k (length first-k-elements) 
	    list_arg
	    (if (or (= 0 k) (null? list_arg))
   		'()
		(cons (car list_arg) (first-k-elements (cdr list_arg) (- k 1)))
	    ))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Merge sort function which uses "merge" function defined above


(define (mergesort list_arg comparator)
	(if (null? list_arg)
	    '()
	     (if (= 1 (length list_arg))
		list_arg
		(let ((front-length (quotient (length list_arg) 2))
		      (back-length (- (length list_arg) (quotient (length list_arg) 2))) 
		     )
		  (merge (mergesort (first-k-elements list_arg front-length) comparator)
			 (mergesort (first-k-elements (reverse list_arg) back-length) comparator)
			 comparator)
		  ))))


