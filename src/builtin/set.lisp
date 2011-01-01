#|
in CLAP, we does not make the special classes for set and flozenset of Python,
we just use list as a class of set.
union and intersection are implemented in cl package, so we just export
it from clap-builtin.
|#

(in-package :clap-builtin)

(declaim (inline set))
(defun set (list &key (test #'eql))
  "this is an implementation of set() and frozenset().

in CLAP, we does not make the special classes for set and flozenset of Python,
we just use list as a class of set.
so SET returns a copy of the list LIST with removing duplicates. "
  (remove-duplicates list :test test))

(defgeneric issubset (set other &key test)
  (:documentation
   "this is an implementation of set.issubset.

return T if all the menbers of SET is included in OTHER."))

(defmethod issubset ((set list) (other list) &key (test #'eql))
  (loop
     for element in set
     if (not (cl:find element other :test test))
     do (return nil)
     finally (return t)))

(defgeneric isupperset (set other &key test)
  (:documentation
   "this is an implementation of set.issubset.

return T if all the menbers of OTHER is included in SET."))

(defmethod isupperset ((set list) (other list) &key (test #'eql))
  ;; should we use islower instead?
  (loop
     for element in other
     if (not (cl:find element set :test test))
     do (return nil)
     finally (return t)))

(setf (symbol-function 'difference) #'set-difference)

(defgeneric symmetric-difference (set other &key test)
  (:documentation
   "this is an implementation of set.symmetric_difference.

return another set with the elements in either SET or OTHER but not in both."))

(defmethod symmetric-difference ((set list) (other list) &key
                                 (test #'eql))
  (append (difference set other :test test)
          (difference other other :test test)))

(defgeneric isdisjoint (set other &key test)
  (:documentation
   "this is an implementation of set.isdisjoint.

return T if SET and OTHER does have any common elements."))

(defmethod isdisjoint ((set list) (other list) &key (test #'eql))
  (loop
     for element in set
     if (cl:find element other :test test)
     do (return nil)
     finally (return t)))

(defgeneric copy (set)
  (:documentation
   "this is an implementation of set.copy.

return a copy of SET."))

(defmethod copy ((set list))
  (copy-list set))

;; the methods for frozenset
(defgeneric update (set other &key test)
  (:documentation
   "this is an implementation of fronzenset.update.

adding the all elements of OTHER into SET.
this return SET and performs as a destructive function."))

(defmethod update ((set list) (other list) &key (test #'eql))
  (loop
     for element in other
     if (not (cl:find element set :test test))
     do (setf set (nconc set (list element))))
  set)
