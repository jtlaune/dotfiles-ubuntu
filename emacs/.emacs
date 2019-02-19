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
 '(TeX-PDF-mode t)
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   ["#2e3436" "#a40000" "#4e9a06" "#c4a000" "#204a87" "#5c3566" "#729fcf" "#eeeeec"])
 '(beacon-color "#c82829")
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-enabled-themes (quote (spacemacs-light)))
 '(custom-safe-themes
   (quote
    ("fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "7f89ec3c988c398b88f7304a75ed225eaac64efa8df3638c815acc563dfd3b55" "3da031b25828b115c6b50bb92a117f5c0bbd3d9d0e9ba5af3cd2cb9db80db1c2" "fe666e5ac37c2dfcf80074e88b9252c71a22b6f5d2f566df9a7aa4f9bea55ef8" "d2e9c7e31e574bf38f4b0fb927aaff20c1e5f92f72001102758005e53d77b8c9" "7e78a1030293619094ea6ae80a7579a562068087080e01c2b8b503b27900165c" "cd736a63aa586be066d5a1f0e51179239fe70e16a9f18991f6f5d99732cabb32" "6b2636879127bf6124ce541b1b2824800afc49c6ccd65439d6eb987dbf200c36" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "fd3c7bd752f48dcb7efa5f852ef858c425b1c397b73851ff8816c0580eab92f1" "595617a3c537447aa7e76ce05c8d43146a995296ea083211225e7efc069c598f" "a622aaf6377fe1cd14e4298497b7b2cae2efc9e0ce362dade3a58c16c89e089c" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "6124d0d4205ae5ab279b35ac6bc6a180fbb5ca594616e1e9a22097024c0a8a99" "450f3382907de50be905ae8a242ecede05ea9b858a8ed3cc8d1fbdf2d57090af" "e2fd81495089dc09d14a88f29dfdff7645f213e2c03650ac2dd275de52a513de" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "ccaaf462e6fe97801f712ea3cee7cbbc4208472fc75e008eab13276c17c87302" "4515feff287a98863b7b7f762197a78a7c2bfb6ec93879e7284dff184419268c" default)))
 '(fci-rule-color "#073642")
 '(flycheck-color-mode-line-face-to-color (quote mode-line-buffer-id))
 '(frame-background-mode (quote light))
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#002b36" 0.25)
    (quote
     ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(highlight-tail-colors
   (quote
    (("#073642" . 0)
     ("#546E00" . 20)
     ("#00736F" . 30)
     ("#00629D" . 50)
     ("#7B6000" . 60)
     ("#8B2C02" . 70)
     ("#93115C" . 85)
     ("#073642" . 100))))
 '(hl-bg-colors
   (quote
    ("#7B6000" "#8B2C02" "#990A1B" "#93115C" "#3F4D91" "#00629D" "#00736F" "#546E00")))
 '(hl-fg-colors
   (quote
    ("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36")))
 '(hl-paren-colors (quote ("#2aa198" "#b58900" "#268bd2" "#6c71c4" "#859900")))
 '(jdee-db-active-breakpoint-face-colors (cons "#F0F4FC" "#5d86b6"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#F0F4FC" "#4F894C"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#F0F4FC" "#B8C5DB"))
 '(line-number-mode nil)
 '(magit-diff-use-overlays nil)
 '(nrepl-message-colors
   (quote
    ("#dc322f" "#cb4b16" "#b58900" "#546E00" "#B4C342" "#00629D" "#2aa198" "#d33682" "#6c71c4")))
 '(org-format-latex-options
   (quote
    (:foreground default :background default :scale 2.0 :html-foreground "Black" :html-background "Transparent" :html-scale 1.0 :matchers
		 ("begin" "$1" "$" "$$" "\\(" "\\["))))
 '(package-selected-packages
   (quote
    (quick-yes yasnippet virtualenvwrapper doom-themes color-theme-sanityinc-tomorrow spacemacs-theme soft-charcoal-theme twilight-theme gruvbox-theme solarized-theme org-download use-package ein pyvenv pyenv ob-ipython multi-term outline-magic preview-latex pdf-tools auctex-latexmk spaceline auctex magit helm-projectile eterm-256color ace-window better-defaults evil ##)))
 '(pdf-occur-global-minor-mode t)
 '(pdf-view-midnight-colors (quote ("#fdf4c1" . "#1d2021")))
 '(pos-tip-background-color "#073642")
 '(pos-tip-foreground-color "#93a1a1")
 '(preview-default-option-list (quote ("displaymath" "floats" "graphics" "footnotes")))
 '(pyenv-mode t)
 '(safe-local-variable-values (quote ((fill-mode . 79))))
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(tool-bar-mode nil)
 '(vc-annotate-background nil)
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#dc322f")
     (40 . "#c85d17")
     (60 . "#be730b")
     (80 . "#b58900")
     (100 . "#a58e00")
     (120 . "#9d9100")
     (140 . "#959300")
     (160 . "#8d9600")
     (180 . "#859900")
     (200 . "#669b32")
     (220 . "#579d4c")
     (240 . "#489e65")
     (260 . "#399f7e")
     (280 . "#2aa198")
     (300 . "#2898af")
     (320 . "#2793ba")
     (340 . "#268fc6")
     (360 . "#268bd2"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (quote
    (unspecified "#002b36" "#073642" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#839496" "#657b83")))
 '(window-divider-default-right-width 10)
 '(xterm-color-names
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#eee8d5"])
 '(xterm-color-names-bright
   ["#002b36" "#cb4b16" "#586e75" "#657b83" "#839496" "#6c71c4" "#93a1a1" "#fdf6e3"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Inconsolata" :foundry "PfEd" :slant normal :weight normal :height 120 :width normal))))
 '(org-document-title ((t (:foreground "#88C0D0" :weight bold :height 2.0 :width normal))))
 '(preview-reference-face ((t nil))))

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
;; multiterm
(use-package multi-term
  :ensure t)
(setq multi-term-program "/bin/zsh")
(setq multi-term-scroll-show-maximum-output 1)
(add-hook 'term-mode-hook (lambda ()
                            (define-key term-raw-map (kbd "M-o") 'ace-window)
                            ))


;; keybindings
(global-set-key (kbd "M-o") 'ace-window)
(global-set-key (kbd "M-r") 'isearch-backward-regexp)
(global-set-key (kbd "M-s") 'isearch-forward-regexp)
(global-set-key (kbd "M-l") 'linum-mode)
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)
(global-set-key (kbd "C-c s s") 'org-download-screenshot)

;; use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-when-compile
  (require 'use-package))

;; evi
(use-package evil
  :ensure t)
(evil-mode t)
(add-to-list 'evil-emacs-state-modes 'image-mode)

;; ace-window
(use-package ace-window
  :ensure t)

;; colors
(use-package eterm-256color
  :ensure t)

;; helm
(use-package helm
  :ensure t)
(helm-mode 1)

;; projectile 
(use-package projectile
  :ensure t)
(projectile-mode +1)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
(use-package helm-projectile
  :ensure t)
(setq projectile-completion-system 'helm)
(helm-projectile-on)

;; git
(use-package magit
  :ensure t)

;; pdf
(use-package pdf-tools
  :ensure t)
(pdf-tools-install)
(setq pdf-tools-enable 1)

;; latex
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
(setq font-latex-fontify-script nil)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq reftex-plug-into-AUCTeX t)
(add-hook 'LaTeX-mode-hook 'outline-minor-mode)
(add-hook 'LaTeX-mode-hook 'outline-hide-body)

(use-package auctex-latexmk
  :ensure t)
(auctex-latexmk-setup)

;; outline-magic
(use-package outline-magic
  :ensure t)
(setq TeX-outline-extra
      '(("%chapter" 1)
        ("%section" 2)
        ("%subsection" 3)
        ("%subsubsection" 4)
        ("%paragraph" 5)))
(define-key outline-minor-mode-map (kbd "<C-tab>") 'outline-cycle)

;; spaceline
(use-package spaceline
  :ensure t
  :config
  (setq-default mode-line-format '("%e" (:eval (spaceline-ml-main)))))

(use-package spaceline-config
  :ensure spaceline
  :config
  (spaceline-helm-mode 1)
  (spaceline-spacemacs-theme))

;; org
(use-package org
  :ensure t)
(setq org-image-actual-width 800)
(setq org-confirm-babel-evaluate nil)
(setq org-mode-hook nil) ;;for some reason there's a lot of shit in the org hook that breaks it?
(add-hook 'org-mode-hook 'outline-minor-mode)
(add-hook 'org-mode-hook 'outline-hide-body)

;; agenda configuration
(setq org-agenda-files
      (list "~/Dropbox/org/todo.org"))
(setq org-refile-targets '((org-agenda-files :maxlevel . 2)))
(setq org-use-fast-todo-selection 1)
(setq org-capture-templates
      '(("h" "home" entry (file "~/Dropbox/org/todo.org")
         "* HOME %?\n DEADLINE: %^t\n")
        ("w" "work" entry (file "~/Dropbox/org/todo.org")
         "* WORK %?\n DEADLINE: %^t\n")
        ("s" "school" entry (file "~/Dropbox/org/todo.org")
           "* SCHL %?\n DEADLINE: %^t\n")))

;; org-download
(use-package org-download
  :ensure t)
(setq org-download-screenshot-method "import /tmp/screenshot.png")
(setq org-download-method 'attach)
(setq org-download-annotate-function (lambda (_link) ""))

;; python notebooks
(use-package ob-ipython
  :ensure t)

(org-babel-do-load-languages
 'org-babel-load-languages
 '((ipython . t)
   (ein . t)
   ;; other languages..
   ))
(add-hook 'org-babel-after-execute-hook 'org-display-inline-images 'append)
(use-package pyvenv
  :ensure t)
(use-package ein
  :ensure t)
(use-package virtualenvwrapper
  :ensure t)
(setq venv-location "~/.pythonenvs/")

;; doom themes
(use-package doom-themes
  :ensure t)
(setq doom-one-brighter-comments t)

;; scroll one line at a time (less "jumpy" than defaults)
(setq mouse-wheel-scroll-amount '(3 ((shift) . 3))) ;; 3 lines at a time
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
(setq scroll-step 1) ;; keyboard scroll one line at a time

;; yasnippet
(use-package yasnippet
  :ensure t)
(yas-global-mode 1)
(put 'downcase-region 'disabled nil)

;; change all prompts to y or n
(fset 'yes-or-no-p 'y-or-n-p)
