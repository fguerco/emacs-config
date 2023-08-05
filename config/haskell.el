;; -*- lexical-binding: t; -*-

(add-hook 'haskell-mode-hook
          (lambda ()
            (haskell-indent-mode t)
            (haskell-indentation-mode t)
            (interactive-haskell-mode t)))
