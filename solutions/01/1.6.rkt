#lang sicp

(define (improve guess x)
        (/ (+ guess (/ x guess)) 2))
      
(define (good_enough? guess x)
        (< (abs (- (* guess guess) x)) 0.001))
      
(define (new-if predicate then-clause else-clause)
        (cond [predicate then-clause]
              [else else-clause]))

(define (sqrt-iter guess x)
        (new-if (good_enough? guess x)
                guess
                (sqrt-iter (improve guess x)
                           x)))
                     
; (sqrt-iter 1.0 9)

; we get infinite recursive loop because of
; elementary procedure "if" evaluates through
; the normal-order evaluation
;
; and specific procedure "new-if" evaluates through
; the applicative-order evaluation that evaluates
; operand (sqrt-iter (improve guess x) x) first
