(use-package smex
  :ensure t
  :init
  (setq smex-save-file (expand-file-name ".smex-items" user-emacs-directory)))

(provide 'init-smex)