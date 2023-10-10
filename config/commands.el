;; -*- lexical-binding: t; -*-

(defmacro define-scratch-command (name major-mode)
  "Macro to define commands to create scratch buffers with a major mode"
  (let* ((name (concat (symbol-name name) "-scratch"))
         (buffer-name (concat "*" name "*")))
    `(defun ,(intern name) ()
       (interactive)
       (switch-to-buffer (get-buffer-create ,buffer-name))
       (,major-mode))))


(define-scratch-command ruby ruby-mode)
(define-scratch-command python python-mode)
(define-scratch-command haskell haskell-mode)
(define-scratch-command scheme scheme-mode)
