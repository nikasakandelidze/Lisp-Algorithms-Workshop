;;;;;((<leftSubTree>) value  (<rightSubTree>))


(define (value-of-node node) (cadr node))

(define (left-sub-tree node) (car node))

(define (right-sub-tree node) (caddr node))

(define (binary-tree-helper sequence high low)
	 (if (null? sequence)
                #t
                (and (= 3 (length sequence)) 
                    (< (value-of-node sequence) high)
		    (> (value-of-node sequence) low)
                    (binary-tree-helper (left-sub-tree sequence) (value-of-node sequence) low)
		    (binary-tree-helper (right-sub-tree sequence) high (value-of-node sequence))
		)       
         ))  


(define (is-binary-tree? sequence) (binary-tree-helper sequence 1000000000000 -100000000000))
