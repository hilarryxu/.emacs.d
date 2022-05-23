(use-package recentf
  :custom
  (recentf-max-saved-items 50)
  :init
  (recentf-mode))

(use-package bookmark
  :defer t
  :custom
  (bookmark-fontify nil))

(provide 'init-pkg)
