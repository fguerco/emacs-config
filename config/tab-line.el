(global-tab-line-mode t)

;; background behind tabs
(set-face-attribute 'tab-line nil
                    :background "gray80"
                    :foreground "gray40"
                    :distant-foreground "gray50"
                    :height 1.0 :box nil)

(set-face-attribute 'tab-line-tab-modified nil
                    :inherit 'tab-line-tab)

(set-face-attribute 'tab-line-tab-current nil
                    :overline t
                    :background "gray80"
                    :foreground "black")

(defun user/tab-line-tab-face-modified-selected (tab _tabs face buffer-p selected-p)
  (when (and buffer-p (buffer-file-name tab) (buffer-modified-p tab) selected-p)
    (setf face `(:inherit tab-line-tab-current ,face)))
  face)

;; originally '(tab-line-tab-face-modified tab-line-tab-face-special)
(setq tab-line-tab-face-functions `(,@tab-line-tab-face-functions
                                    user/tab-line-tab-face-modified-selected))

;; appends a little pencil after buffer name in case of modified buffer
(setq tab-line-tab-name-function
      (lambda (buffer &optional buffers)
        (concat (buffer-name buffer)
                (and (buffer-modified-p buffer)
                     (buffer-file-name buffer)
                     " ✎"))))
 
 
 
