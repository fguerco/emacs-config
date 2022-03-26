;;  (background-color . "honeydew")
;;  (left . 50)
;;  (top . 50)))


(if (display-graphic-p)
    (progn
      (setq initial-frame-alist
            '(
              (tool-bar-lines . 0)
              (width . 140) ; chars
              (height . 48))) ; lines
      (setq default-frame-alist
            '(
              (tool-bar-lines . 0)
              (width . 140)
              (height . 48))))
  (progn
    (setq initial-frame-alist '( (tool-bar-lines . 0)))
    (setq default-frame-alist '( (tool-bar-lines . 0)))))
