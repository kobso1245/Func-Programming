(define (area a b c)
  (sqrt (* (- (+ b c) a) (-(+ a b) c) (- (+ a c) b) (/ 1 16) (+ a b c))))
(area 3 4 5)
(area 4 7 8) 