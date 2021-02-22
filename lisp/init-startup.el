(if (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))
(unless (string-equal system-type "windows-nt")
  (menu-bar-mode -1))
(if (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

(setq inhibit-startup-screen t)
(setq inhibit-startup-echo-area-message t)

(set-face-attribute 'default nil :font "Consolas 12")
(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (set-fontset-font (frame-parameter nil 'font)
                    charset (font-spec :family "Microsoft Yahei" :size 14)))

;; package
(setq package-archives '(("gnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))

(package-initialize)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(use-package diminish
  :ensure t)

(use-package bind-key
  :ensure t)

;; 不要自动备份，auto-save.el 就挺好用
(setq make-backup-files nil)
(setq auto-save-default nil)

(require 'auto-save)
(auto-save-enable)
(setq auto-save-silent t)
(setq auto-save-delete-trailing-whitespace t)

(setq-default mode-line-format nil)
(require 'awesome-tray)
(awesome-tray-mode 1)

(provide 'init-startup)
