;; -*- lexical-binding: t; -*-

;;  (background-color . "honeydew")  
;;  (left . 50)
;;  (top . 50)))


(let ((frame-config-graphic
       '((tool-bar-lines . 1)
         (width . 100)
         (height . 32)))
      (frame-config-term '( (tool-bar-lines . 0))))
  (if (display-graphic-p)
      (progn
        (setq initial-frame-alist frame-config-graphic)
        (setq default-frame-alist frame-config-graphic))
    (progn
      (setq initial-frame-alist frame-config-term)
      (setq default-frame-alist frame-config-term))))

(add-hook 'window-setup-hook 'toggle-frame-maximized t)
