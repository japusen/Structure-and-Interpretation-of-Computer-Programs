(define (cadr lst) (car (cdr lst))
)

(define (make-kwlist1 keys values) (list keys values))

(define (get-keys-kwlist1 kwlist) (car kwlist))

(define (get-values-kwlist1 kwlist) (cadr kwlist))


(define (make-kwlist2 keys values)
  (if (null? keys)
      ()
      (cons (list (car keys) (car values)) (make-kwlist2 (cdr keys) (cdr values)))
  )
)

(define (get-keys-kwlist2 kwlist) 
  (map (lambda (x) (car x)) kwlist)
)

(define (get-values-kwlist2 kwlist)
  (map (lambda (x) (cadr x)) kwlist)
)

(define (add-to-kwlist kwlist key value)
  (make-kwlist (append (get-keys-kwlist kwlist) (list key)) (append (get-values-kwlist ex-lst) (list value)))  
)

(define (get-first-from-kwlist kwlist key)
  (define keys (get-keys-kwlist kwlist))
  (define values (get-values-kwlist kwlist))
  (cond ((null? keys) ())
        ((equal? (car keys) key) (car values))
        (else (get-first-from-kwlist (make-kwlist (cdr keys) (cdr values)) key))
  )
)