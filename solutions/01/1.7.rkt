#lang racket

(define (average x y)
        (/ (+ x y) 2))

(define (improve guess x)
        (average guess (/ x guess)))

(define (better-good-enough? guess old-guess)
        (< (abs (- guess old-guess)) 0.001))

(define (sqrt-iter guess old-guess x)
        (if (good-enough? guess old-guess)
            guess
            (sqrt-iter (improve guess x) guess x)))

(define (sqrt x)
        (sqrt-iter 1.0 0 x))

(define foobar (sqrt 250000000)) ; set an additional variable for reuse in check below

foobar ; print sqrt result
(* foobar foobar) ; print sqrt*sqrt check for comparison
