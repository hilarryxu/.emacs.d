;; 不要自动备份，用 auto-save.el

(setq make-backup-files nil)
(setq auto-save-default nil)

(require 'auto-save)
(auto-save-enable)
(setq auto-save-silent t)
; (setq auto-save-delete-trailing-whitespace t)

(provide 'init-startup)
