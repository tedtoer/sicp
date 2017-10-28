#lang racket

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

(define foobar (cube-root 27)) ; set an additional variable for reuse in check below

foobar ; print cube-root result
(* foobar foobar foobar) ; print foobar*foobar*foobar check for comparison
