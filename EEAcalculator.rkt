;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname EEAcalculator) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; (EEA-calculator EEA-list)  applies  Extended Euclidean Algorithm and produces a table

;; EEA-calculator: (list of (list of int)) -> (list of (list of int))
(define (EEA-calculator EEA-list)
  (cond
    [(= (third (first EEA-list)) 0) (reverse EEA-list)]
    [(= (length EEA-list) 2)
     (EEA-calculator (cons (calc-row-values (list (q (third (first EEA-list))
                                                     (third (second EEA-list))))
                                            (first EEA-list) (second EEA-list)) (reverse EEA-list)))]
    [else (EEA-calculator (cons (calc-row-values (list (q (third (second EEA-list))
                                                          (third (first EEA-list))))
                                                       (second EEA-list) (first EEA-list))
                                                 EEA-list))]))
 




;; (calc-row-values q-value-list list-1 list-2) produces the calculated values of the next row give
;;    previous 2 rows

;; calc-row-values: (listof int) (listof int) (listof int) -> (listof int)
(define (calc-row-values q-value-list list-1 list-2)
  (cond
    [(= (length q-value-list) 3)
     (cons (- (first list-1) (* (third q-value-list) (first list-2))) q-value-list)]
    [(= (length q-value-list) 2)
     (calc-row-values (cons (- (second list-1) (* (second q-value-list) (second list-2)))
                            q-value-list)
                      list-1 list-2)]
    [(= (length q-value-list) 1)
     (calc-row-values (cons (- (third list-1) (* (first q-value-list) (third list-2))) q-value-list)
                      list-1 list-2)]))





;; (q r1 r2) determines q value based off of the 2 r values provided

;; q: int int -> int 
(define (q r1 r2) (floor (/ r1 r2)))