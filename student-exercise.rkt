#lang racket
;; Data definitions
(define-struct student (last first teacher))
;; a student is a structure: (make-student l f t) where l, f, and t are symbols

;;Contract: subst-teacher : student symbol -> student

;;purpose to create a student structure with a new
;; teacher name if the teacher's name matches 'Fritz

;; Examples
;; (subst-teacher (make-student 'Find 'Matthew 'Frizt) 'Elise)
;; =
;; (make-student 'Find 'Matthew 'Elise)
;; (subst-teacher (make-student 'Find 'Matthew 'Amanda) 'Elise)
;; =
;; (make-student 'Find 'Matthew 'Amanda)

;; Template:
;; (define (process-student a-student a-teacher)
;;  .. (student-last a-student) ...
;; ... (student-first a-student) ...
;; ... (student-teacher a-student)...)

;; Definition
(define (subst-teacher a-teacher a-student)
  (cond
    [(symbol=? (student-teacher a-student) 'Fritz)
     (make-student (student-last a-student)
                   (student-first a-student)
                   a-teacher)]
    [ else a-student]))

;; Tests
(subst-teacher (make-student 'Find 'Matthew 'Fritz) 'Elise)
;; Excpected value:
(make-student 'Find 'Matthew 'Elise')

(subst-teacher (make-student 'Find 'Matthew 'Amanada) 'Elise)
;; Excpected value:
(make-student 'Find 'Matthew 'Amanda)


(define-struct student (last first teacher))
(make-student 'findler 'kathi 'matthias)
(make-student 'fisler 'sean 'matthias)
(make-student 'flatt 'shriram 'matthias)

(define (check a-student a-teacher)
  (cond
    [(symbol=? (student-teacher a-student) a-teacher)
     (student-last a-student)]
    [else 'none]))

(define (transfer a-student a-teacher)
  (make-student (student-last a-student)
                (student-first a-student)
                a-teacher))