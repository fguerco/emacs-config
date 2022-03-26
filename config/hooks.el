(defun load-prog-mode ()
  (display-line-numbers-mode))

(add-hook 'prog-mode-hook #'load-prog-mode)
(add-hook 'text-mode-hook #'load-prog-mode)
