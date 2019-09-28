#lang racket

(#%require rackunit)

(define (average x y)
        (/ (+ x y) 2))

(define (improve guess x)
        (average guess (/ x guess)))

(define (better-good-enough? guess old-guess)
        (< (abs (- guess old-guess)) 0.001))

(define (sqrt-iter guess old-guess x)
        (if (better-good-enough? guess old-guess)
            guess
            (sqrt-iter (improve guess x) guess x)))

(define (sqrt x)
        (sqrt-iter 1.0 0 x))

(define test-number 65536)
(define sqrt1 (sqrt test-number))

(define square-of-sqrts
        (* sqrt1 sqrt1))

(check-equal? (exact-round sqrt1) 256)
(check-equal? (exact-round square-of-sqrts) test-number)
