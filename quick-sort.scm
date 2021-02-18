
;;Takes a pivot and a list and produces a pair two lists.
;;The first of the two lists contains all of those element less than the
;;pivot, and the second contains everything else. Notice that
;;the first list pair every produced is (() ()), and as the
;;recursion unwinds exactly one of the two lists gets a new element
;;cons'ed to the front of it.


(define (partition pivot list_arg)
	(if (null? list_arg) 
	  '(() ())
	  (let ((split-of-rest (partition pivot (cdr list_arg))))
	      (if (< (car list_arg) pivot)
                  (list (cons (car list_arg) (car split-of-rest)) (cadr split-of-rest))
                  (list (car split-of-rest) (cons (car list_arg) (cadr split-of-rest)))))))


;;Implements the quicksort algorithm to sort lists of numbers from
;;high to low. If a list is of length 0 or 1, then it is trivially
;;sorted. Otherwise, we partition to cdr of the list around the car
;;to generate two lists: those in the cdr that are smaller than the car,
;;and those in the cdr that are greater than or equal to the car.
;;We then recursively quicksor


(define (quick-sort list_arg)
	(if (< (length list_arg) 2) 
	    list_arg
	    (let ((split-part (partition (car list_arg) (cdr list_arg))))
	        (append (quick-sort (car split-part)) (list (car list_arg)) (quick-sort (cadr split-part))))))
