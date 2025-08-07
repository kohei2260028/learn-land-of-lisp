(defstruct person
  name
  age
  waist-size
  favorite-color)
(defparameter *bob* (make-person :name "Bob"
                                 :age 35
                                 :waist-size 32
                                 :favorite-color "blue"))
(defstruct x
  y
  z)
(defparameter *guy* #S(x :y "bb" :z "ee"))
(x-y *guy*)
(find-if (lambda (x) (= x 5)) '(1 2 3 4 5 6 7))
(find-if (lambda (x) (= x 5)) '(1 2 3 4 6 7))
(reduce #'- '(100 50 25 12))
(reduce (lambda (best item)
          (if (and (evenp item) (> item best))
              item
              best))
        '(7 4 5 2)
        :initial-value 0)
(map 'list
     (lambda (x)
       (if (eq x #\a)
           #\b
           x))
     "a b c d a b c d")
(defmethod add ((a number) (b number))
  (+ a b))
(add 3 4)
(defmethod add ((a list) (b list))
  (append a b))

(add '(a b) '(b c))
