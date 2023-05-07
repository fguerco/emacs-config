
(let* ((one-week (* 60 60 24 7))
       (backup-dir (format "%sbackups" user-emacs-directory))
       (delete-backup (lambda (file)
                        (message "Deleting %s" file)
                        (delete-file file)))
       (old-backup-p (lambda (file)
                       (let ((current (current-time))
                             (last-access (nth 5 (file-attributes file))))
                         (and
                          (backup-file-name-p file)
                          (> (float-time (time-subtract current last-access)) one-week))))))
                      
                     
  (setq
   backup-by-copying t      ; don't clobber symlinks
   backup-directory-alist `(("." . ,backup-dir)))

  (message "Deleting old backup files")
  (mapc delete-backup
        (cl-remove-if-not old-backup-p
                          (directory-files backup-dir t))))

