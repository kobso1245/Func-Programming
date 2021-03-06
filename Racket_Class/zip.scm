(define (zip list1 list2)
  (if (and (null? list2)(null? list1)) '()
     (if (null? list1) (cons (append(list '() (car list2))) (zip '() (cdr list2)))
         (if(null? list2) (cons (append(list (car list1) '())) (zip (cdr list1) '()))
            (cons (list (car list1) (car list2)) (zip (cdr list1) (cdr list2)))))))
(define (randomFuncThatDoesSomeShit elem list1)
  (if (null? list1) '()
     (cons (list elem (car list1)) (randomFuncThatDoesSomeShit elem (cdr list1)))))

(define (take list1 n)
  (if (= n 0) '()
      (append (cons(car list1) '()) (take (cdr list1) (- n 1)))))
(define (drop list1 n)
  (if (null? list1) '()
      (if (> n 0) (drop (cdr list1) (- n 1))
          (append  (cons (car list1) (drop (cdr list1) (- n 1)))))))
(define (all? pred? list1)
  (if (null? list1) #t
      (and (pred? (car list1)) (all? pred? (cdr list1)))))
(define (reduce op memo list1)
  (if (null? list1) memo
      (reduce op (op (car list1) memo) (cdr list1)))) 
(define (sublist list1 start end)
  (take (drop list1 start) (- end start))) 
(define (cartes list1 list2)
  (if(null? list1) '()
     (append (cartes (cdr list1) list2 )(randomFuncThatDoesSomeShit (car list1) list2))))