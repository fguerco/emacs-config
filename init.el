(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
;; (setq-default indent-tabs-mode nil)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(tango-dark))
 '(indent-tabs-mode nil)
 '(package-selected-packages
   '(inf-ruby geiser-racket geiser-guile geiser restclient company-restclient slime-company company projectile-rails counsel swiper ivy popup elisp-slime-nav auto-complete restclient-test ruby-tools ruby-end rbenv dash ibuffer-projectile ## projectile lsp-mode request solarized-theme slime rainbow-delimiters paredit))
 '(show-paren-mode t)
 '(warning-suppress-log-types '((comp))))

 
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVu Sans Mono" :foundry "PfEd" :slant normal :weight normal :height 110 :width normal)))))


(mapc #'load (file-expand-wildcards (format "%sconfig/*el" user-emacs-directory)))
