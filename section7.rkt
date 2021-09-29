#lang racket
(define-struct posn (x y))
(define-struct star (last first dob ssn))
(define-struct airplane (kind max-speed max-load price))

;; distance-to-0 : pixel-2 -> number
;; to compute the distance of a-pixel to the origin
(define (distance-to-0 a-pixel)
  (cond
    [(number? a-pixel) a-pixel]
    [(posn? a-pixel) (sqrt
                      (+ (sqr (posn-x a-pixel))
                         (sqr (posn-y a-pixel))))]))

(define-struct square (nw length))

(define-struct circle (center radius))

;; perimeter : shape -> number
;; to compute the perimeter of a-shape
(define (perimeter a-shape)
  (cond
    [(square? a-shape) (*(square-length a-shape) 4)]
    [(circle? a-shape) (* (* 2 (circle-radius a-shape)) pi )]))

(make-square (make-posn 20 20) 3)
(make-square (make-posn 2 20) 3)
(make-circle (make-posn 10 99) 1)

;; f : shape -> ??
(define (f a-shape)
  (cond
    [(square? a-shape)
     ... (square-nw a-shape) ... (square-length a-shape) ...]
    [(circle? a-shape)
     ... (circle-center a-shape) ... (circle-radius a-shape) ... ]))


