;; 去掉工具栏、菜单栏、滚动条
(if (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))
(unless (string-equal system-type "windows-nt")
  (menu-bar-mode -1))
(if (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

;; 去掉启动信息显示
(setq inhibit-startup-screen t)
(setq inhibit-startup-echo-area-message t)

;; 设置中文字体
(set-face-attribute 'default nil :font "Consolas 12")
(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (set-fontset-font (frame-parameter nil 'font)
                    charset (font-spec :family "Microsoft Yahei" :size 14)))

(provide 'init-early-init)
