; normal-order evaluation of (test 0 (p))
; (test 0 (p))
; (if (= 0 0) 0 (p))
; returns 0 because of eval operators first and
; operators as necessary

; applicative-order evaluation of (test 0 (p))
; (test 0 (p))
; evals infinite recursive loop of (p) because of
; eval operands first

(define (p) (p))
(define (test x y)
  (if (= x 0)
      0
      y))

(if (= 0 0) 0 (p))
