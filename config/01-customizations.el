;; -*- lexical-binding: t; -*-

;; Default init variables.
(defvar user/font-height 120)
(defvar user/font-family "DejaVu Sans Mono")
(defvar user/font-foundry "Pfed")
(defvar user/font-slant 'normal)
(defvar user/font-weight 'normal)
(defvar user/font-width 'normal)

;; load local customizations to override the values above
(load (expand-file-name "local" user-emacs-directory) t)
