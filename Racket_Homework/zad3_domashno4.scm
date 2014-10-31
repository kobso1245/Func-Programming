
  
(define (filter-list pred? list)
  (cond
    ((null? list) '())
    ((pred?  (car list)) (cons (car list) (filter-list pred? (cdr list))))
    (else (filter-list pred? (cdr list)))))
(filter-list (lambda (x) (if (< x 5) #t #f)) '(1 2 3 4 5 6 7))
(define (difference list1 list2)
  (if(null? list1) '()
     (if (null? list2) list1
       (filter-list exist? list2))))
        
(define (exist? elem list2)
   (if(null? list2) #f
       (if (= elem (car list2)) #t
           (exist? elem (cdr list2)))))
(difference '(1 2 3 4 5) '(1 2) )
