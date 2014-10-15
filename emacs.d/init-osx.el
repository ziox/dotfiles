;; Mac specific settings

;; Sets paths from shell in OS X
(use-package exec-path-from-shell :ensure)
(exec-path-from-shell-initialize)

(setq ns-right-alternate-modifier nil)

;; MouseWheel!
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1) ((control) . nil)))
(setq mouse-wheel-progressive-speed nil)

;; on Mac, there's always a menu bar drown, don't have it empty
(when (display-graphic-p)
  (menu-bar-mode t))

(setq ns-pop-up-frames nil)

;;
;; Some usefull key-bindings
;;

; Smex
(bind-key "s-p" 'smex)
(bind-key "s-P" 'smex-major-mode-commands)

; Text
(bind-key "s-d" 'kill-whole-line)

; Search
(bind-key "s-F" 'helm-do-ag)

; Movements
(bind-key "<s-left>" 'move-beginning-of-line)
(bind-key "<s-right>" 'move-end-of-line)
(bind-key "<s-up>" 'beginning-of-buffer)
(bind-key "<s-down>" 'end-of-buffer)

; Buffers, Windows and Frames
(bind-key "s-o" 'ido-find-file)
(bind-key "s-w" 'kill-this-buffer)
(bind-key "s-_" 'split-window-below)
(bind-key "s-|" 'split-window-right)
(bind-key "s-W" 'delete-frame)
