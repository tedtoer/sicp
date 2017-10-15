; define procedure that gets 2 operands (a, b) and does:
; (operator a b)
; where operator defined as (if (> b 0) + -) that means
; if b bigger 0, operator = +, else operator = -
; then applies operator to operands (a and b)

(define (a-plus-abs-b a b) ((if (> b 0) + -) a b))
