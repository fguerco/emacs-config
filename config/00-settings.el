(let ((default-directory  (format "%smodules" user-emacs-directory)))
  (normal-top-level-add-subdirs-to-load-path))


(setq inhibit-startup-message t)

;; (require 'lsp-mode)

(autoload 'ibuffer "ibuffer" "List buffers." t)
