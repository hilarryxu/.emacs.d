(use-package vertico
  :ensure t
  :init
  (vertico-mode))

(use-package savehist
  :ensure t
  :init
  (savehist-mode))

(use-package orderless
  :ensure t
  :custom
  (completion-styles '(orderless basic))
  (completion-category-overrides '((file (styles basic partial-completion)))))

(use-package marginalia
  :ensure t
  :init
  (marginalia-mode))

(use-package consult
  :ensure t
  :config
  (setq consult-narrow-key "<")
)

; xah-fly-keys
(setq xah-fly-use-control-key nil)
(require 'xah-fly-keys)
(xah-fly-keys-set-layout "qwerty")
(xah-fly-keys 1)
(setq xah-fly-M-x-command 'execute-extended-command)

(require 'xah-find)

; (use-package which-key
;   :ensure t
;   :init
;   (which-key-mode 1)
;   (diminish 'which-key-mode))

; (use-package yasnippet
;   :ensure t
;   :config
;   (yas-global-mode 1))

; (use-package company
;   :ensure t
;   :init
;   (global-company-mode)
;   (diminish 'company-mode "CMP"))

; (use-package ace-window
;   :bind ("C-x o" . ace-window))

(provide 'init-idle)
