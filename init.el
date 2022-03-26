(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
;; (setq-default indent-tabs-mode nil)

(dolist (f (file-expand-wildcards "~/.emacs.d/config/*.el" t))
        (load f))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 ;; '(custom-enabled-themes (quote (felipe)))
 ;; '(custom-safe-themes
 ;;   (quote
 ;;    ("81798b36fc44f740b2c16d5db44d4fab7839eb458bc35664b066b9e8bc824cd5" "d140dde142e8ad838ec1afb95e8fa7145143301d051971ab724ff4230407b220" "37c5fcb41f6493c179abe4952d1df84d22ec4f3ac4603c34e0484559774804d1" "23f4e0e1031d237db44cab096b04b7f773cc8f79508bbfb51dba5b882362524c" "c56f96753b9d293fa752d12c22a16f868a9e13999ded0a65b755a76ebe7d0211" "f8a4af40feb6b6a78743ed95c290e0fa195fbd1191f433cc065569fb89493b59" "4b494923804f8db57da8d39a5246772dab558bae80622022fd1b5ce9550dd7d9" "070ae8686c56ef079b505ab3f938af41ae901c374bd32e87100b850129a7b795" "4df11443bb20c1a0cfbc628b0aa56f9df3bcb41504b4d785756bde4746f0390f" "b94a451cfceebf2eee4541d62db3d19320d4fb94a05a8d864b9b6dad92153a64" "269570f774f99006b2b143baf21ea1b4b78f1c00cbae09582a0afe9aeaf99b7c" default)))
 '(indent-tabs-mode nil)
 '(package-selected-packages
   (quote
    (lsp-mode request solarized-theme slime rainbow-delimiters paredit elisp-slime-nav)))
 '(show-paren-mode t))

 
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVu Sans Mono" :foundry "PfEd" :slant normal :weight normal :height 110 :width normal)))))
