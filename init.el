;; -*- lexical-binding: t; -*-

(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("833ddce3314a4e28411edf3c6efde468f6f2616fc31e17a62587d6a9255f4633" "51ec7bfa54adf5fff5d466248ea6431097f5a18224788d0bd7eb1257a4f7b773" default))
 '(indent-tabs-mode nil)
 '(package-selected-packages
   '(lsp-ivy lsp-haskell haskell-mode cider inf-ruby geiser-racket geiser-guile geiser restclient company-restclient slime-company company projectile-rails counsel swiper ivy popup elisp-slime-nav auto-complete restclient-test ruby-tools ruby-end rbenv dash ibuffer-projectile ## projectile lsp-mode request solarized-theme slime rainbow-delimiters paredit))
 '(show-paren-mode t)
 '(warning-suppress-log-types '((comp))))

(mapc #'load (file-expand-wildcards
              (concat user-emacs-directory "config/[0-9a-z]*.el")))
