(projectile-mode +1)

(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

(setq projectile-completion-system 'ivy)

(defun projectile-asdf-project-p (&rest args)
  (declare (ignore args))
  (or (projectile-verify-file-wildcard "?*.asd")
      (projectile-verify-file-wildcard "?*.asdf")))

(projectile-register-project-type 'common-lisp #'projectile-asdf-project-p
                                  :project-file "*.asd"
                                  :src-dir "src/"
                                  :test-dir "test/")
