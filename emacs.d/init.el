(require 'cask "/usr/local/Cellar/cask/0.7.2/cask.el")
(cask-initialize)

;; Keeps ~Cask~ file in sync with the packages
;; that you install/uninstall via ~M-x list-packages~
;; https://github.com/rdallasgray/pallet
(require 'pallet)

;; Theme
;; https://github.com/bbatsov/zenburn-emacs
(load-theme 'sanityinc-solarized-dark t)
(set-cursor-color "firebrick")

;; GUI fonts
(when (display-graphic-p)
  (set-frame-font "Source Code Pro-18" nil t))

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

;; Tabs and Spaces
(setq-default indent-tabs-mode nil)
(setq tab-width 4)
(setq whitespace-style (quote (face trailing tab-mark)))
(global-whitespace-mode)
(set-face-background 'whitespace-trailing "#FF0000")
(add-hook 'before-save-hook 'whitespace-cleanup)

;; Disable backup and auto-save
(setq backup-inhibited t)
(setq make-backup-files nil)
(setq auto-save-default nil)

;; GUI Specific settings
(when (display-graphic-p)
  (load "~/.emacs.d/init-gui.el"))

;; Mac specific settings
(when (eq system-type 'darwin)
  (load "~/.emacs.d/init-osx.el"))

