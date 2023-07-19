;; -*- lexical-binding: t; -*-

(let ((default-directory  (format "%smodules" user-emacs-directory)))
  (normal-top-level-add-subdirs-to-load-path))


(setq inhibit-startup-message t)
(setq column-number-mode t)

(autoload 'ibuffer "ibuffer" "List buffers." t)

(load-theme 'wombat)

(global-display-line-numbers-mode 1)
(global-hl-line-mode 1)
(set-face-attribute 'hl-line nil :inherit nil :background "gray18")
