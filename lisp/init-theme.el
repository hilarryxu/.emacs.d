; (use-package zenburn-theme
;   :ensure t
;   :config
;   (load-theme 'zenburn t))

(use-package iceberg-theme
  :ensure t
  :config
  (iceberg-theme-create-theme-file)
  (load-theme 'solarized-iceberg-dark t))

(provide 'init-theme)
