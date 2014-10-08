;; Mac specific settings

;; Sets paths from shell in OS X
(exec-path-from-shell-initialize)

(setq ns-right-alternate-modifier nil)

;; MouseWheel!
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1) ((control) . nil)))
(setq mouse-wheel-progressive-speed nil)

;; on Mac, there's always a menu bar drown, don't have it empty
(when (display-graphic-p)
  (menu-bar-mode t))

(setq ns-pop-up-frames nil)

;; Some usefull key-bindings
(global-set-key (kbd "s-p") 'smex)
(global-set-key (kbd "s-P") 'smex-major-mode-commands)

