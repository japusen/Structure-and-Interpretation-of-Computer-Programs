(define (tail-replicate x n)
  ; BEGIN
  (define (helper n lst)
    (if (= n 0) lst
      (helper (- n 1) (cons x lst))))
  (helper n ())
  ; END
)