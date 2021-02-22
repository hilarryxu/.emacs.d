;; 去掉 mode-line，用 awesome-tray 替代
(setq-default mode-line-format nil)
(require 'awesome-tray)
(awesome-tray-mode 1)

(provide 'init-ui)
