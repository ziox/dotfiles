(require 'use-package)

(use-package company :ensure
  :init
  (progn
    (global-company-mode)
    (define-key company-active-map (kbd "C-n") 'company-select-next)
    (define-key company-active-map (kbd "C-p") 'company-select-previous)
    (define-key company-active-map (kbd "ESC") 'company-abort)
    (add-to-list 'company-backends 'company-c-headers)
    (setq company-clang-arguments '("-std=c++11" "-stdlib=libc++")))
  :bind ("<C-tab>" . company-complete))

(use-package company-c-headers :ensure)

(use-package company-ghc :ensure)

(use-package cmake-mode :ensure
  :mode (("CMakeLists\\.txt\\'" . cmake-mode)
         ("\\.cmake\\'" . cmake-mode)))

(use-package evil
  :disabled
  :init
  (progn
    (evil-mode 1)
    (setq evil-emacs-state-cursor '("green" box))
    (setq evil-normal-state-cursor '("firebrick" box))
    (setq evil-visual-state-cursor '("firebrick" hbar))
    (setq evil-insert-state-cursor '("firebrick" bar))
    (setq evil-replace-state-cursor '("red" hollow))
    (setq evil-operator-state-cursor '("red" hollow))))

(use-package haskell-mode :ensure
  :init
  (progn
    (add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
    (add-hook 'haskell-mode-hook 'turn-on-haskell-indentation))
  :bind (("C-," . haskell-move-nested-left)
         ("C-." . haskell-move-nested-right)))

(use-package helm :ensure
  :init (require 'helm-config)
  :config (set-face-attribute 'helm-selection nil :background "#441100")
  :bind (("s-t" . helm-mini)
         ("C-x b" . helm-mini)))

(use-package helm-ag :ensure
  :init
  (progn
    (setq helm-ag-base-command "ag --nocolor --nogroup --ignore-case")
    (setq helm-ag-command-option "--all-text")))

(use-package ido-vertical-mode :ensure
  :init
  (progn
    (ido-vertical-mode 1)
    (setq ido-vertical-define-keys 'C-n-C-p-up-down-left-right)))

(use-package smartparens :ensure
  :init
  (progn
    (require 'smartparens-config)
    (setq sp-autoescape-string-quote nil)
    (setq-default sp-autoskip-closing-pair 'always)
    (smartparens-global-mode t)
    (show-smartparens-global-mode t)))

(use-package smex :ensure
  :bind (("M-x" . smex)
         ("M-X" . smex-major-mode-commands)
         ("C-c C-c M-x" . execute-extended-command)))

(use-package yasnippet :ensure
  :init (yas-global-mode 1))

(use-package undo-tree :ensure
  :init (global-undo-tree-mode 1)
  :bind ("s-Z" . redo))

(use-package yaml-mode :ensure)
