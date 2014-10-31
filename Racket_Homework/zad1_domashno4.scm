(define (test)
  ((lambda (x) (* x x)) 3))
(define (less-than list)
  (lambda (x)
    (if (null? list ) '()
               (if (> x (car list)) (cons (car list) ((less-than (cdr list)) x))
                   ((less-than (cdr list)) x)))))
((less-than '(1 2 3 4)) 3) ;резултат (1 2) -> всички елементи на входния списък, които са по-малки от 3
((less-than '(7 4 12 23)) 12) ;резултат (7 4)
((less-than '(-7 5 0 3)) 5) ;резултат (-7 0 3)
                                                