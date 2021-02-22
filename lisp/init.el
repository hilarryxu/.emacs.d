(let (
      ;; 加载的时候临时增大 `gc-cons-threshold' 以加速启动速度
      (gc-cons-threshold most-positive-fixnum)
      ;; 清空避免加载远程文件的时候分析文件
      (file-name-handler-alist nil))

  ;; 抹掉插件启动的输出
  (with-temp-message ""
    ;; 先设置背景，避免闪烁
    (custom-set-faces
     '(default ((t (:background "#3F3F3F" :foreground "#DCDCCC")))))

    (require 'init-startup)
    (require 'init-theme)
    (require 'lazy-load)
    (require 'init-keymaps)

    ;; 可以延后加载的配置和包
    (run-with-idle-timer
     1 nil
     #'(lambda ()
         (require 'init-idle)
         (require 'init-window)
         ; (server-start)
         ))))

(provide 'init)
