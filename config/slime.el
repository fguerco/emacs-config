;; -*- lexical-binding: t; -*-

(load (expand-file-name "~/.quicklisp/slime-helper.el"))
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
            (local-unset-key (kbd "C-c RET"))
            (define-key slime-mode-map (kbd "C-c RET") 'slime-macroexpand-1)
            (define-key slime-mode-map (kbd "C-c C-RET") 'slime-macroexpand-all)))

