;; -*- lexical-binding: t; -*-

;; Default init variables.
(defvar user/font-height 105)
(defvar user/font-family "DejaVu Sans Mono")

>>>>>>> 07620ee (branch to merge later)

(defvar user/lisp-implementations (list '(sbcl ("sbcl"))))
(defvar user/slime-default-lisp 'sbcl)


;; load local customizations to override the values above
(load (expand-file-name "local" user-emacs-directory) t)
