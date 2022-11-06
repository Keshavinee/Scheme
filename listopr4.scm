(define (member lst key)
    (cond
        ((null? lst) #F)
        ((equal? key (car lst)) #T)
        (else (member (cdr lst) key))
    )    
)

(define (counting l c)
    (cond
        ((null? l) '())
        ((null? (cdr l)) (cons (list c (car l)) ()))
        ((equal? (car l) (car (cdr l))) (counting (cdr l) (+ c 1)))
        (else (cons (list c (car l)) (counting (cdr l) 1)))
    )
)

(define (uniquelst l cpy)
    (cond
        ((null? l) cpy)
        ((or (eq? 1 (car (car l))) (member cpy (car (cdr (car l))))) (uniquelst (cdr l) cpy))
        (else (uniquelst (cdr l) (cons  (car (cdr (car l))) cpy)))
    )
)

(define (reverse l copy)
    (if (null? l) copy
        (reverse (cdr l) (cons (car l) copy))   
    )
)

(define (unique l)
    (reverse (uniquelst (counting l '1) '()) '())    
)

(display (unique '("a" "b" "a" "a" "a" "c" "c" "d")))
(newline)
