;;-----MELPA PACKAGE------------------------------------------------------------

;; ---!!DON't DELETE IT !!--------------

(load "package")
(package-initialize)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))
(exec-path-from-shell-copy-env "PYTHONPATH")

;;------------------------------------------------------------------------------
(setq inhibit-startup-screen t)  ;; INHIBIT WELCOME SCREEN.
(set-keyboard-coding-system nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(custom-enabled-themes (quote (zenburn)))
 '(custom-safe-themes
   (quote
    ("a7051d761a713aaf5b893c90eaba27463c791cd75d7257d3a8e66b0c8c346e77" "82358261c32ebedfee2ca0f87299f74008a2e5ba5c502bde7aaa15db20ee3731" "11f888c2eff8ccf5e3adaae9c53e45d0a67bd1974237d46173f499a8cfcb6d1d" default)))
 '(package-selected-packages
   (quote
    (exec-path-from-shell zenburn-theme use-package recently pyenv-mode powerline-evil nord-theme neotree jedi elpy all-the-icons ace-window))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#2E3440" :foreground "#D8DEE9" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 170 :width normal :foundry "nil" :family "Courier")))))

;; for font customization use <M-x customize-face RET default RET>



;;BASIC CUSTOMISATION_----------------------------------------------------

(add-to-list 'load-path "~/../../anaconda3/bin")
(add-to-list 'load-path "~/../../usr/local/share/emacs/site-lisp/autoconf")
(add-to-list 'load-path "~/../../anaconda3/lib/python3.7/site-packages")
(add-to-list 'load-path "~/.local/bin/")
(load-theme 'nord t)

;;-----------------------------<<ELPY>>----------------------------------

(use-package elpy
  :ensure t
  :init
  (elpy-enable))
(setq elpy-rpc-backend "jedi")

(setq elpy-rpc-python-command " ~/../../anaconda3/bin/python")
(setq python-shell-interpreter " ~/../../anaconda3/bin/python")  ;; execution of python command and for generating virtualenv within buffer.
;; --------------------------<<NEOTREE>>----------------------------------

(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))
;; download all-the-icons package from MELPA; <M-x package-install RET all-the-icons RET>, and add
;; the preceding text
;; -----------------------------------------------------------------------

(require 'all-the-icons)

