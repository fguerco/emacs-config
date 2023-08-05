;; -*- lexical-binding: t; -*-

(let ((helper-file (expand-file-name "~/.quicklisp/slime-helper.el")))
  (when (file-exists-p helper-file)
    (load helper-file)))

;; Replace "sbcl" with the path to your implementation
(setq inferior-lisp-program "sbcl")


(add-hook 'slime-connected-hook
          (lambda ()
            (slime-scratch)
            (global-set-key (kbd "<f7>") 'slime-scratch)
            (global-set-key (kbd "<f8>") 'slime-restart-inferior-lisp)))


(add-hook 'slime-mode-hook
          (lambda ()
            (slime-setup '(slime-fancy slime-company))
            (local-unset-key (kbd "C-c <return>"))
            (local-unset-key (kbd "C-c C-<return>"))
            (define-key slime-mode-indirect-map (kbd "C-c <return>") 'slime-macroexpand-1)
            (define-key slime-mode-indirect-map (kbd "C-c C-<return>") 'slime-macroexpand-all)))

