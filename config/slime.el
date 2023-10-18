;; -*- lexical-binding: t; -*-

(load (expand-file-name "~/.quicklisp/slime-helper") t)

(setq slime-lisp-implementations user/lisp-implementations)
(setq slime-default-lisp user/slime-default-lisp)

(defun user/slime-connected ()
  (slime-scratch)
  (global-set-key (kbd "<f7>") 'slime-scratch)
  (global-set-key (kbd "<f8>") 'slime-restart-inferior-lisp))

(defun user/slime-mode ()
  (slime-setup '(slime-fancy slime-company slime-cl-indent))
            (local-unset-key (kbd "C-c C-<return>"))
            (define-key slime-mode-indirect-map
                        (kbd "C-c C-<return>")
                        'slime-macroexpand-all))


(add-hook 'slime-connected-hook 'user/slime-connected)
(add-hook 'slime-mode-hook 'user/slime-mode)
