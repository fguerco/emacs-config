
(let ((load-prog-mode (lambda () (display-line-numbers-mode))))
  (add-hook 'prog-mode-hook load-prog-mode)
  (add-hook 'text-mode-hook load-prog-mode))


(add-hook 'prog-mode (lambda () (company-mode)))
