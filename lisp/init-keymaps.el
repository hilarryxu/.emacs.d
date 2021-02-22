;; 移除一些全局按键绑定
(lazy-load-unset-keys
  '("C-x C-f" "C-z" "C-q" "s-W" "s-z" "M-h" "C-\\" "s-c" "s-x" "s-v"))

(lazy-load-set-keys
  '(
    ("C-x C-f" . ido-find-file)          ; 交互式查找文件
    ("C-x b" . ido-switch-buffer)        ; 交互式切换buffer
    ("C-x i" . ido-insert-buffer)        ; 插入缓存
    ("C-x I" . ido-insert-file)          ; 插入文件
    ))

(lazy-load-global-keys
  '(
    ("M-x" . smex)
    ("C-c C-c M-x" . execute-extended-command)
  )
  "init-smex")

(provide 'init-keymaps)
