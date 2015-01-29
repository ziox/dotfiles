;; GUI Specific settings

;; Theme & Fonts
; https://github.com/bbatsov/zenburn-emacs
(use-package color-theme-sanityinc-solarized :ensure)
; (load-theme 'sanityinc-solarized-dark t)
(load-theme 'misterioso)
(set-cursor-color "lightgreen")

;; Linum Mode
(global-linum-mode 1)
(setq linum-format "%4d")

;; MouseWheel!
(setq mouse-wheel-scroll-amount '(2 ((shift) . 4) ((control) . nil)))
(setq mouse-wheel-progressive-speed nil)

;; CUA mode for fuck sake!
(cua-mode t)
(setq cua-auto-tabify-rectangles nil)
(transient-mark-mode 1)
(setq cua-keep-region-after-copy t)

