;; -*- lexical-binding: t; -*-

(let ((load-lisp
       (lambda ()
         (prettify-symbols-mode)
         (rainbow-delimiters-mode))))

  (add-hook 'prog-mode-hook
            (lambda ()
              (company-mode)
              (display-fill-column-indicator-mode)
              (setq fill-column 80)))

  (dolist (hook '(scheme-mode-hook lisp-mode-hook))
    (add-hook hook load-lisp)))
