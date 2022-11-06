(define (counting l c)
    (cond
        ((null? l) '())
        ((null? (cdr l)) (cons (list c (car l)) ()))
        ((equal? (car l) (car (cdr l))) (counting (cdr l) (+ c 1)))
        (else (cons (list c (car l)) (counting (cdr l) 1)))
    )
)

(define (count l)
    (counting l '1)
)

(display (count '("a" "b" "a" "a" "a" "c" "c")))
(newline)