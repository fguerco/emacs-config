(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
;; (setq-default indent-tabs-mode nil)

;; (dolist (f (file-expand-wildcards "~/.emacs.d/config/*.el" t))
;;         (load f))

(mapc #'load (file-expand-wildcards "~/.emacs.d/config/*.el"))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(indent-tabs-mode nil)
 '(package-selected-packages
   '(ibuffer-projectile ## projectile lsp-mode request solarized-theme slime rainbow-delimiters paredit elisp-slime-nav))
 '(show-paren-mode t))

 
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVu Sans Mono" :foundry "PfEd" :slant normal :weight normal :height 110 :width normal)))))
