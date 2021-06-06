(in-package #:nyxt-user)

;; Import Files
(dolist (file (list (nyxt-init-file "statusline.lisp")
                    (nyxt-init-file "stylesheet.lisp")))
  (load file))
