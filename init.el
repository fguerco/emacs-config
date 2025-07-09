;; -*- lexical-binding: t; -*-

(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("833ddce3314a4e28411edf3c6efde468f6f2616fc31e17a62587d6a9255f4633"
     "51ec7bfa54adf5fff5d466248ea6431097f5a18224788d0bd7eb1257a4f7b773" default))
 '(ignored-local-variable-values '((Package . SYSTEM) (Syntax . Common-Lisp)))
 '(indent-tabs-mode nil)
 '(org-agenda-files '("~/felipe.org") t)
 '(package-selected-packages
   '(## auto-complete auto-virtualenvwrapper company company-inf-ruby
        company-restclient counsel dash elisp-slime-nav geiser geiser-guile
        ibuffer-projectile inf-ruby ivy lsp-ivy lsp-mode magit paredit popup
        projectile projectile-rails rainbow-delimiters rbenv request restclient
        restclient-test ruby-end ruby-tools slime slime-company swiper))
 '(show-paren-mode t)
 '(warning-suppress-log-types '((comp))))

(mapc #'load (file-expand-wildcards
              (concat user-emacs-directory "config/[0-9a-z]*.el")))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVu Sans Mono" :foundry "Pfed" :slant normal :weight normal :height 120 :width normal)))))
