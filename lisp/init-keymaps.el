;; 移除一些全局按键绑定
(lazy-load-unset-keys
  '("C-x C-f" "C-z" "C-q" "s-W" "s-z" "M-h" "C-\\" "s-c" "s-x" "s-v"))

(lazy-load-global-keys
  '(
    ("C-x C-f" . lusty-file-explorer)       ; 交互式查找文件
    ("C-x b" . lusty-buffer-explorer)       ; 交互式切换buffer
  )
  "lazy-load-lusty")

(lazy-load-set-keys
  '(
    ("C-x i" . ido-insert-buffer)           ; 插入缓存
    ("C-x I" . ido-insert-file)             ; 插入文件
    ("C-c f" . find-file-rg)                ; rg --files
    ))

(provide 'init-keymaps)
