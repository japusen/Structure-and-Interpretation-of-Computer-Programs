(define (over-or-under num1 num2) 
	(cond ((< num1 num2) -1)
		  ((= num1 num2) 0)
		  (else 1)
	)
)

(define (composed f g) 
	(define (hof x)
		(f (g x))
	)
	hof
)

(define (square n) (* n n))

(define (pow base exp) 
	(cond
		((= base 1) 1)
		((= exp 1) base)
		((even? exp) (square (pow base (quotient exp 2))))
		(else (* base (square (pow base (quotient exp 2))))) 
	)
)

(define (ascending? lst) 
	(cond 
		((or (null? lst) (null? (cdr lst))) #t)
		((< (car (cdr lst)) (car lst)) #f)
		(else (ascending? (cdr lst))) 
	)
)
