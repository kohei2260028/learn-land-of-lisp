(if '()
    'yes
    'no)
(if '(1)
    'yes
    'no)
(defun my-length (list)
  (if list
      (1+ (my-length (cdr list)))
      0))

(if (oddp 5)
    'ova
    (/ 1 0))

(defvar *num-was-odd* nil)

(if (oddp 5)
    (progn (setf *num-was-odd* t)
           'oddnum)
    'even-num)
(unless (oddp 4)
  (setf *num-was-odd* nil)
  'even-num)
*num-was-odd*
(cond (*num-was-odd* 'odd)
      (t 'even))

(defun is3 (x)
  (case x
    ((eq x 3) 'is3)
    (otherwise 'isnot3)))
(is3 3)
