#lang racket
;; Data Definition
;; a transport vehicle is either
;; (make-bus SEATS RANGE ROUTE)
;; (make-limo SEATS RANGE)
;; (make-car SEATS RANGE)
;; (make-subway SEATS ROUTE)
;; where seats and range are a number, and
;; ROUTE is a symbol for what transport route the vehicle is currently on
;; 'north 'south 'east 'west 'yard (indicating north, south, east, west, or yard when not on a route)

(define-struct bus (seats range route))
(define-struct limo (seats range))
(define-struct car (seats range))
(define-struct subway (seats route))

