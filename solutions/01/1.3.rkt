#lang sicp

(#%require rackunit)

(define (sum-of-squares-of-two-larger a b c)
        (cond [(and (> a b) (> c b)) (+ (* a a) (* c c))]
              [(and (> a c) (> b c)) (+ (* a a) (* b b))]
              [else (+ (* c c) (* b b))]))

(check-equal? (sum-of-squares-of-two-larger 2 1 3) 13)
