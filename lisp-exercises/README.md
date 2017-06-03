# Lisp exercises

## Calculating Pi by implementing Gauss-Legendre algorithm

This assignment is made for computing the digits of pi, it will produce correct digits by doing some iterations. With the given function roundToPrecision (number precision), it will be able to round of the number to a certain precision, which is in 10000 digits on this exercise.

This solution provides few steps:

First, defining starting values for a, b, p and t based on the given formula of Gauss-Legendre. I used setf in defining mutable variables, but as what I've seen from others, defvar is also an alternative way of doing that, I just preferred to follow the example in variables.lisp :)

Then, creating functions that will calculate the next values of a, b, p and t.

And lastly, a function that works recursively in calculating pi. A nested let-binding that store values, this will end when the current pi and previous pi are equal, meaning it has already reached the most accurate pi in 10000 digits.

Note: (for my own reference)

* (write (coerce (calcPI a0 b0 t0 p0 0L0) 'long-float))
          coerce - type converter function
* (setf a 10)
* (let ((n 20))
  (write n)
  )
* (list 2)
* (list 2 nil)
* (cons 2 nil)
* (cons 2 (cons 4 nil))
* (append (list 1 2) (list 3 4))
* (nreverse (list 1 2 3))
* (lambda (a) (+ a 2))
* (funcall (lambda (a) (+ a 2)) 4) 
* (defun f (a) (+ a a))
* (f 10)
* T
* nil
* (if (equal (list 1 2) (list 1 2)) T nil)
