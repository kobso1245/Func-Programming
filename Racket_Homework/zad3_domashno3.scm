(define (accumulate op initial-value f a next b)
  (if (or (> a b) (= a b)) (op (f b) initial-value)
      (op (f a) (accumulate op initial-value f (next a) next b)))) 
(define (f a)
  a)
(define  (next a)
  (+ a 1))
(define (fact b)
  (if (= b 0) 1
  (accumulate * 1 (lambda (a) a) 1 (lambda (a) (+ a 1)) b)))
(define (pow x n)
  (if (= n 0) 1
      (* x (pow x (- n 1)))))

(define (cosh-series x n)
  (define max01 (/ (pow x (* 2 n)) (fact (* 2 n))))
  (accumulate + 0 (lambda (a) (/ (pow x n)(fact x))) 0 (lambda (a) (+ a 2))  max01) ) 
                    
