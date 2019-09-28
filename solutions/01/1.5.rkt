#lang sicp

; normal-order evaluation of (test 0 (p))
; (test 0 (p))
; (if (= 0 0) 0 (p))
; returns 0 because of evaluating operators first and
; operators as necessary

; applicative-order evaluation of (test 0 (p))
; (test 0 (p))
; evaluates infinite recursive loop of (p) because of
; evaluating operands first

(define (p) (p))
(define (test x y)
  (if (= x 0)
      0
      y))

; (test 0 (p))
