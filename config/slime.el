;; (setq slime-default-lisp "sbcl")

(load (expand-file-name "~/.quicklisp/slime-helper.el"))
;; Replace "sbcl" with the path to your implementation
(setq inferior-lisp-program "sbcl")


(add-hook 'slime-connected-hook
          (lambda ()
            (slime-scratch)
            (global-set-key (kbd "<f7>") 'open-slime-scratch)))


(add-hook 'slime-mode-hook
          (lambda ()
            (local-set-key (kbd "C-M-z") 'slime-switch-to-output-buffer)))

