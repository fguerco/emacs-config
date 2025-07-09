;; -*- lexical-binding: t; -*-

(require 'dired-x)

(let ((default-directory  (format "%smodules" user-emacs-directory)))
  (normal-top-level-add-subdirs-to-load-path))

(setq inhibit-startup-message t)
(setq column-number-mode t)

(autoload 'ibuffer "ibuffer" "List buffers." t)

(load-theme 'wombat)
;;(load-theme 'solarized-selenized-dark)
(set-face-background 'default "#111")  ; default - "#242424"


(global-display-line-numbers-mode 1)
(global-hl-line-mode 1)
(set-face-attribute 'hl-line nil :inherit nil :background "gray18")

(setq fill-column 80)

;; add path entries from interactive shell
(let* ((shell-path (shell-command-to-string "bash -ic 'echo -n $PATH' 2> /dev/null"))
       (path-entries (split-string shell-path ":")))
  (setenv "PATH" shell-path)
  (setq exec-path path-entries))
