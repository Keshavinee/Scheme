(define (remove l)
    (cond
        ((null? l) '())
        ((null? (cdr l)) (cons (car l) ()))
        ((eq? (car l) (car (cdr l))) (remove (cdr l)))
        (else (cons (car l) (remove (cdr l))))
    )
)


(display (remove '(1 2 1 1 1 3 3)))
(newline)
