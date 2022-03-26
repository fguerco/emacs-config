(let ((default-directory  "~/.emacs.d/modules"))
  (normal-top-level-add-subdirs-to-load-path))


(setq backup-directory-alist
          `(("." . ,(concat user-emacs-directory "backups"))))

(setq inhibit-startup-message t)

;; (require 'lsp-mode)

