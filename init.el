;;; init.el --- Emacs config entry point

;;; Commentary:

;;; Code:

(when (< emacs-major-version 24)
  (message "Your emacs is too old, please upgrade it."))

;; user-emacs-directory
(unless (boundp 'user-emacs-directory)
  (defvar user-emacs-directory "~/.emacs.d"))

;; load-path
(add-to-list 'load-path (concat user-emacs-directory "lisp/"))

(defun add-subdirs-to-load-path (dir)
  "Recursive add directories to `load-path'."
  (let ((default-directory (file-name-as-directory dir)))
    (add-to-list 'load-path dir)
    (normal-top-level-add-subdirs-to-load-path)))

;; site-lisp
(add-subdirs-to-load-path (concat user-emacs-directory "site-lisp/"))

;; init configs
(require 'init)

;; load customize file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))
