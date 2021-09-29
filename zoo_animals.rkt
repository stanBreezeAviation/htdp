#lang racket
;; Data Definition
;; a zoo-animal is either
;; (make-spider LEGS SPACE)
;; (make-elephants  SPACE)
;; (make-monkey INTELLIGENCE SPACE)
;; where legs and space is a number, and
;; INTELLIGENCE is a symbol, one of
;; 'homer 'marge 'lisa (indicating dumb, average, or smart respectively)

(define-struct spider (legs space))
(define-struct elephant (space))
(define-struct monkey (intelligence space))