; (use-package xah-fly-keys
;   :ensure t
;   :init
;   (setq xah-fly-use-control-key nil)
;   :config
;   (xah-fly-keys-set-layout "qwerty")
;   (xah-fly-keys 1)
;   (setq xah-fly-M-x-command 'amx))

(require 'xah-fly-keys)
(setq xah-fly-use-control-key nil)
(setq xah-fly-M-x-command 'amx)
(xah-fly-keys-set-layout "qwerty")
(xah-fly-keys 1)

; (use-package xah-find
;   :ensure t)

(use-package ido
  :ensure t
  :config
  (ido-mode 1)
  (setq ido-enable-flex-matching t)
  (setq ido-everywhere nil)

  (use-package ido-completing-read+
    :ensure t)

  (use-package ido-vertical-mode
    :ensure t
    :config
    (setq ido-vertical-show-count t)
    (setq ido-use-faces t)
    (set-face-attribute 'ido-vertical-first-match-face nil
                        :background nil
                        :foreground "orange")
    (set-face-attribute 'ido-vertical-only-match-face nil
                        :background nil
                        :foreground nil)
    (set-face-attribute 'ido-vertical-match-face nil
                        :foreground nil)
    (ido-vertical-mode 1)
    (setq ido-vertical-define-keys 'C-n-and-C-p-only))
)

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

(provide 'init-idle)
