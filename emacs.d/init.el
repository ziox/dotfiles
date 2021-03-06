(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

(setq package-user-dir "~/.emacs.d/packages/")
(package-initialize)

(unless (package-installed-p 'use-package)
  (progn (package-refresh-contents)
         (package-install 'use-package)))

;; Disable menu, tool bar and scroll bar
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; No splash screen
(setq inhibit-splash-screen t)

;; Line and column numbers
(line-number-mode 1)
(column-number-mode 1)

;; Interactive Mode
(ido-mode t)
(setq ido-enable-flex-matching t)
(setq ido-enable-last-directory-history nil)

;; Turn off the fucking bell
(setq ring-bell-function 'ignore)

;; Fast echoing
(setq echo-keystrokes 0.02)

;; Stop blinking!
(setq blink-matching-paren nil)

;; Overwrite the selection! WTF!
(delete-selection-mode t)

;; Tabs and Spaces
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq whitespace-style (quote (face trailing tab-mark)))
(global-whitespace-mode)
(set-face-background 'whitespace-trailing "#FF0000")
(add-hook 'before-save-hook 'whitespace-cleanup)

;; Disable backup and auto-save
(setq backup-inhibited t)
(setq make-backup-files nil)
(setq auto-save-default nil)

;; Uniquify buffer names
(require 'uniquify)
(setq uniquify-buffer-name-style 'reverse)
(setq uniquify-separator "/")
(setq uniquify-after-kill-buffer-p t) ; rename after killing uniquified
(setq uniquify-ignore-buffers-re "^\\*") ; don't muck with special buffers

;; Load packages settings
(load "~/.emacs.d/init-packages.el")

;; GUI Specific settings
(when (display-graphic-p)
  (load "~/.emacs.d/init-gui.el"))

;; Mac specific settings
(when (eq system-type 'darwin)
  (load "~/.emacs.d/init-osx.el"))

;; Languages
(add-to-list 'load-path "~/.emacs.d/languages")
(require 'language-c)

;; Local configurations
(when (file-exists-p "~/.emacs.d/init-local.el")
  (load "~/.emacs.d/init-local.el"))

