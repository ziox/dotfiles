(require 'use-package)

(use-package company
  :init (global-company-mode))

(use-package evil
  :init
  (progn
    (evil-mode 1)
    (setq evil-emacs-state-cursor '("green" box))
    (setq evil-normal-state-cursor '("firebrick" box))
    (setq evil-visual-state-cursor '("firebrick" hbar))
    (setq evil-insert-state-cursor '("firebrick" bar))
    (setq evil-replace-state-cursor '("red" hollow))
    (setq evil-operator-state-cursor '("red" hollow))))

(use-package helm
  :init (require 'helm-config)
  :config (set-face-attribute 'helm-selection nil :background "#441100")
  :bind (("s-t" . helm-mini)
         ("C-x b" . helm-mini)))

(use-package ido-vertical-mode
  :init
  (progn
    (ido-vertical-mode 1)
    (setq ido-vertical-define-keys 'C-n-C-p-up-down-left-right)))

(use-package smartparens
  :config
  (progn
    (require 'smartparens-config)
    (setq sp-autoescape-string-quote nil)
    (setq sp-autoskip-closing-pair 'always)
    (show-smartparens-global-mode t))
  :init (smartparens-global-mode t))

(use-package smex
  :bind (("M-x" . smex)
         ("M-X" . smex-major-mode-commands)
         ("C-c C-c M-x" . execute-extended-command)))

(use-package yasnippet
  :init (yas-global-mode 1))

(use-package undo-tree
  :init (global-undo-tree-mode 1)
  :bind ("s-Z" . redo))
