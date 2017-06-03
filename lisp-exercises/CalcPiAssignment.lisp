;; TRYING one liner declaration of starting values
;;(let (a 1) (b (/ (sqrt 2)1)) (t0 (/ 1 4)) (p 1))


;; These two lines sets the number of binary digits used to represent a float
;; in Lisp. This is necessary because you'll be working with tiny numbers
;; TL;DR ignore these two lines
(setf (EXT:LONG-FLOAT-DIGITS) 35000)
(setf *read-default-float-format* 'long-float)

;; This method rounds a number to a certain precision
;; It takes two arguments: the number to round and the number of digits to
;; round in decimals
;;
;; Example: (roundToPrecision 10.0044 3) -> 10.004
(defun roundToPrecision (number precision)
  (let
    ((p (expt 10 precision)))
    (/ (round (* number p)) p)
  )
)


;; starting value of a
(setf a0 1L0)

;; starting value of b
(setf b0 (/ 1L0 (sqrt 2L0)))

;; starting value of t
(setf t0 (/ 1L0 4L0))

;;starting value of p
(setf p0 1L0)

;; get next a
(defun nextA(a1 b1)
  (/ (+ a1 b1)2)
)

;;get next b
(defun nextB(a1 b1)
  (sqrt (* a1 b1))
)

;;get next t
(defun nextT (t1 p1 a1 b1)
 (- t1 (* (expt (- a1 (nextA a1 b1))2) p1))
)

;;get next p
(defun nextP(p)
  (* 2 p)
)

;; calculating pi
(defun calcPI(a1 b1 t1 p1 prevPi)
  (let (
    (nextA1 (nextA a1 b1))
    (nextB1 (nextB a1 b1))
    (nextP1 (nextP p1))
    (nextT1 (nextT t1 p1 a1 b1))
    )
    (let (
      (pi (roundToPrecision (/ (expt (+ nextA1 nextB1)2) (* 4 nextT1)) 10000))
    )
;;BODY - this will end if the current pi is equal in the previous pi
  (if
    (= prevPi pi)
    pi
    (calcPI nextA1 nextB1 nextT1 nextP1 pi)
    )
   ))
)

(write (coerce (calcPI a0 b0 t0 p0 0L0) 'long-float))
