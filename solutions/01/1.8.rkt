#lang racket

(#%require rackunit)

(define (improve guess x)
        (/ (+ (/ x
                 (* guess guess))
              (* 2 guess))
           3))

(define (good-enough? guess old-guess)
        (< (abs (- guess old-guess)) 0.001))

(define (cube-root-iter guess old-guess x)
        (if (good-enough? guess old-guess)
            guess
            (cube-root-iter (improve guess x) guess x)))

(define (cube-root x)
        (cube-root-iter 1.0 0 x))

(define test-number 27)
(define cube-root-res (cube-root test-number))

(define cube
        (* cube-root-res cube-root-res cube-root-res))

(check-equal? (exact-round cube-root-res) 3)
(check-equal? (exact-round cube) test-number)
