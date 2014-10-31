(define (circle? x y radius)
  (if ( <= ( + (* x x) (* y y)) (* radius radius)) #t 
                                                    #f))
        
(circle? 2 2 3)
(circle? 3 3 5)
(circle? 4 3 3)