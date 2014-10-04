(require 'use-package)

(use-package ido-vertical-mode
  :init
  (progn
    (ido-vertical-mode 1)
    (setq ido-vertical-define-keys 'C-n-C-p-up-down-left-right)))

(use-package ido-ubiquitous
  :init (setq ido-everywhere t))

(use-package smex
  :bind (("M-x" . smex)
         ("M-X" . smex-major-mode-commands)
         ("C-c C-c M-x" . execute-extended-command)))

(use-package undo-tree
  :init (global-undo-tree-mode 1)
  :bind ("s-Z" . redo))
