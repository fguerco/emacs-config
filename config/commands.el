;; -*- lexical-binding: t; -*-

(defmacro define-scratch-command (name &rest modes)
  "Macro to define commands to create scratch buffers with a major mode"
  (let* ((name (concat (symbol-name name) "-scratch"))
         (buffer-name (concat "*" name "*")))
    `(defun ,(intern name) ()
       (interactive)
       (switch-to-buffer (get-buffer-create ,buffer-name))
       ,@(mapcar #'list modes))))


(define-scratch-command ruby ruby-mode)
(define-scratch-command python python-mode)
(define-scratch-command haskell haskell-mode)
(define-scratch-command scheme scheme-mode)
(define-scratch-command js js-mode nodejs-repl-minor-mode)


(defun find-file-with-sudo (file)
  (interactive "FOpen file with sudo: ")
  (find-file (format "/sudo::%s" file)))


(defun find-file-at-point-with-sudo ()
  (interactive)
  (let ((f (dired-file-name-at-point)))
    (when (and (file-exists-p f)
               (y-or-n-p (format "Open the file %s with sudo?" f)))
      (find-file-with-sudo (dired-file-name-at-point)))))
