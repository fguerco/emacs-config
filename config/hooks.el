;; -*- lexical-binding: t; -*-

(let ((load-lisp
       (lambda ()
         (prettify-symbols-mode)
         (rainbow-delimiters-mode))))

  (add-hook 'prog-mode-hook #'company-mode)

  (dolist (hook '(scheme-mode-hook lisp-mode-hook))
    (add-hook hook load-lisp)))
