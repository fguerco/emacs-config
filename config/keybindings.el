(let ((key-mappings
       '(("C-c /" comment-region)
         ("C-c ;" uncomment-region)
         ("C-<f5>" global-display-line-numbers-mode)
         ("<f6>" slime)
         ("<C-f6>" slime-quit-lisp)
         ("C-c C--" shrink-window)
         ("C-c C-+" enlarge-window)
         ("C-c C-=" enlarge-window)
         ("C-x C-b" ibuffer))))
  (dolist (mapping key-mappings)
    (global-set-key (kbd (pop mapping)) (pop mapping))))

(autoload 'ibuffer "ibuffer" "List buffers." t)

;;(windmove-default-keybindings)
