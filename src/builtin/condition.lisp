(in-package :clap-builtin)

(define-condition not-implemented-yet (simple-error)
  ()
  (:report
   (lambda (c s)
     (format s "sorry, this is not implemented yet"))))
