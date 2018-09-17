;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(require 'package)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#2e3436" "#a40000" "#4e9a06" "#c4a000" "#204a87" "#5c3566" "#729fcf" "#eeeeec"])
 '(custom-enabled-themes (quote (nord)))
 '(custom-safe-themes
   (quote
    ("ccaaf462e6fe97801f712ea3cee7cbbc4208472fc75e008eab13276c17c87302" "4515feff287a98863b7b7f762197a78a7c2bfb6ec93879e7284dff184419268c" default)))
 '(package-selected-packages
   (quote
    (preview-latex pdf-tools auctex-latexmk spaceline auctex magit helm-projectile eterm-256color ace-window better-defaults evil ##)))
 '(window-divider-default-right-width 10))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; bigger initial size
(add-to-list 'initial-frame-alist '(height . 48))
(add-to-list 'initial-frame-alist '(width . 180))
(add-to-list 'initial-frame-alist '(top . 80))
(add-to-list 'initial-frame-alist '(left . 55))

;; central save files
(setq backup-directory-alist `(("." . "~/.saves")))

;; Fuck outta here with those bars
(menu-bar-mode -1)
(tool-bar-mode -1)
(toggle-scroll-bar -1)

;; give me my nice margins
;;(set-frame-parameter nil 'internal-border-width 12)
(add-to-list 'default-frame-alist '(internal-border-width . 12))

;; gimme some nice windows pls
(setq-default
 inhibit-startup-screen t
 initial-scratch-message ";; Happy Hacking!!"
 left-margin-width 1 right-margin-width 1     ; Add left and right margins
 select-enable-clipboard t       ; Merge system's and Emacs' clipboard
 cursor-type '(bar . 5)          ; set cursor type to bar
 line-spacing 4)                 ; line spacing

;; term
(setq explicit-shell-filename "/bin/zsh")
(setq term-scroll-show-maximum-output 1)
(add-hook 'term-mode-hook #'eterm-256color-mode)
(eval-after-load "term"
  '(progn
     ;; ensure that scrolling doesn't break on output
     (setq term-scroll-to-bottom-on-output t)))

;; keybindings
(global-set-key (kbd "M-o") 'ace-window)
(global-set-key (kbd "M-r") 'isearch-backward-regexp)
(global-set-key (kbd "M-s") 'isearch-forward-regexp)

;; use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-when-compile
  (require 'use-package))

;; packages
(use-package evil
  :ensure t)
(evil-mode t)

(use-package ace-window
  :ensure t)

(use-package eterm-256color
  :ensure t)

(use-package helm
  :ensure t)
(helm-mode 1)


(use-package projectile
  :ensure t)
(projectile-mode +1)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

(use-package helm-projectile
  :ensure t)
(setq projectile-completion-system 'helm)
(helm-projectile-on)

(use-package magit
  :ensure t)

(use-package pdf-tools
  :ensure t)
(pdf-tools-install)
(setq pdf-tools-enable 1)


(use-package tex
  :ensure auctex)
(setq TeX-view-program-selection '((output-pdf "PDF Tools")))
(setq TeX-source-correlate-method
      '((dvi . source-specials)
       (pdf . synctex)))
(setq TeX-source-correlate-mode t)
(setq TeX-auto-save t)
(setq TeX-PDF-mode t)
(setq TeX-parse-self t)
(setq-default TeX-source-correlate-start-server t)
(add-hook 'TeX-after-compilation-finished-functions
           #'TeX-revert-document-buffer)
(global-font-lock-mode 1)
(set-default 'preview-scale-function 3.0)

(use-package auctex-latexmk
  :ensure t)
(auctex-latexmk-setup)

(use-package spaceline
  :ensure t
  :config
  (setq-default mode-line-format '("%e" (:eval (spaceline-ml-main)))))

(use-package spaceline-config
  :ensure spaceline
  :config
  (spaceline-helm-mode 1)
  (spaceline-emacs-theme))
