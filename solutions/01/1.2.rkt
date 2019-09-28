#lang sicp

(#%require rackunit)

(define func
        (/ (+ 5
              4
              (- 2
                 (- 3
                    (+ 6
                       (/ 4 5)))))
            (* 3
               (- 6 2)
               (- 2 7))))

(check-equal? func (/ 74/5 -60))
