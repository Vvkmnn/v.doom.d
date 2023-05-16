;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;;;;;;;;;;;;;;;;;;;;;;        ;;;;;;;;;;;;;;;;;;;;
;; ;;;;;;;;;;;;;;;;                    ;;;;;;;;;;;;;;
;; ;;;;;;;;;;;;;                ;;;;;;;   ;;;;;;;;;;;
;; ;;;;;;;;;;;                ;;;;;;;;;     ;;;;;;;;;
;; ;;;;;;;;;                 ;;;;;;;;         ;;;;;;;
;; ;;;;;;;;                  ;;;;;;            ;;;;;;
;; ;;;;;;;                   ;;;;;;             ;;;;;
;; ;;;;;;            ;;;;;;; ;;;;;;              ;;;;
;; ;;;;;           ;;;;;;;;; ;;;;;;               ;;;
;; ;;;;;           ;;;;;;;   ;;;;;;               ;;;
;; ;;;;;            ;;;;;;    ;;;;;               ;;;
;; ;;;;;             ;;;;;;    ;;;;               ;;;
;; ;;;;;              ;;;;;;    ;;;               ;;;
;; ;;;;;               ;;;;;;    ;                ;;;
;; ;;;;;;               ;;;;;;                   ;;;;
;; ;;;;;;;               ;;;;;                  ;;;;;
;; ;;;;;;;;               ;;;;;                ;;;;;;
;; ;;;;;;;;;;              ;;;;;             ;;;;;;;;
;; ;;;;;;;;;;;;             ;;;;;          ;;;;;;;;;;
;; ;;;;;;;;;;;;;;            ;;;;;       ;;;;;;;;;;;;
;; ;;;;;;;;;;;;;;;;;;                ;;;;;;;;;;;;;;;;
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!

;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
                                        ; (setq user-full-name "John Doe"
                                        ;       user-mail-address "john@doe.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-unicode-font' -- for unicode glyphs
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
;;(setq doom-font (font-spec :family "Fira Code" :size 12 :weight 'semi-light)
;;      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 13))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
                                        ; (setq doom-theme 'doom-one)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
                                        ; (setq display-line-numbers-type t)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
                                        ; (setq org-directory "~/org/")


;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

;; user
(setq-default
 user-full-name    "Vivek Menon"
 user-mail-address "v+emacs@vvkmnn.xyz")

;; editor
(setq frame-title-format '("vDoom Emacs | %b") ;; Title
 ;; frame-title-format '("vDoom Emacs | %m | %b") ;; Title
      ;; doom-private-dir "~/.v.doom.d/"               ;; Private Dir
      menu-bar-mode t                               ;; For Yabai WM NOTE https://github.com/koekeishiya/yabai/issues/86#issuecomment-507934212
      doom-theme 'doom-city-lights)                 ;; Theme

;; fonts
(setq doom-font (font-spec :family "MesloLGS NF" :size 12))
      ;; doom-unicode-font (font-spec :family "MesloLGS NF" :size 13)
      ;; doom-variable-pitch-font (font-spec :family "MesloLGS NF" :size 13)
 

;; Flymake
;; https://github.com/doomemacs/doomemacs/issues/2497
;; (setq next-error-find-buffer-function 'next-error-buffer-unnavigated-current))



;; format
;; web/prettier
;; (setq-hook! 'web-mode-hook +format-with 'prettier-prettify)
;; (setq-hook! 'web-mode-hook +format-with-lsp 'prettier-prettify)
;; (add-hook 'web-mode-hook 'prettier-mode)
;;
;; (setq-hook! 'web-mode-hook +format-with 'prettier-prettify)
;; (setq-hook! 'css-mode-hook +format-with 'prettier-prettify)

;; (setq-hook! 'web-mode-hook +format-with-lsp 'prettier-prettify)
;; (setq-hook! 'css-mode-hook +format-with-lsp 'prettier-prettify)

;; (add-hook 'web-mode-hook 'prettier-mode)
;; (add-hook 'css-mode-hook 'prettier-mode)

;; (setq-hook! 'web-mode-hook +format-with 'prettier)
;; (setq-hook! 'css-mode-hook +format-with 'prettier)

;; (setq-hook! 'web-mode-hook +format-with 'prettier-prettify)
;; (setq-hook! 'css-mode-hook +format-with 'prettier-prettify)

;; (setq-hook! 'js2-jsx-mode-hook +format-with 'standard)
;; (setq-hook! 'js-jsx-mode-hook +format-with 'standard)
;; (setq-hook! 'rjsx-mode-hook +format-with 'standard)
;; (setq-hook! 'js-mode-hook +format-with 'standard)

;; does nothing anymore
;; (setq-hook! 'web-mode-hook +format-with 'prettier-prettify)

;; LSP
;; Not formatting web mode with +format since lsp support - install prettier to replace tidy
;; (after! lsp
;;   (setq-hook! 'web-mode-hook +format-with-lsp 'prettier-prettify)
;;   (setq-hook! 'web-mode-hook +format-with 'prettier-prettify))

;; prevent so-long-mode from hijacking .ejs
;; (setq so-long-file-local-mode-function 'so-long-inhibit)
;; up threshold to prevent being called
;; (global-so-long-mode 0)

;; so-long
;; basically disable from starting
;; (after! so-long
;;   (setq! so-long-threshold 1000000))



;; Copilot
;; accept completion from copilot and fallback to company
;; (use-package! copilot
;;   :hook (prog-mode . copilot-mode)
;;   :bind (("C-TAB" . 'copilot-accept-completion-by-word)
;;          ("C-<tab>" . 'copilot-accept-completion-by-word)
;;          :map copilot-completion-map
;;          ("<tab>" . 'copilot-accept-completion)
;;          ("TAB" . 'copilot-accept-completion)))

;;; ui/pretty-code
;; ;; Iosevka
;; (setq doom-font (font-spec :family "Iosevka" :size 13)
;;     doom-unicode-font (font-spec :family "Iosevka" :size 13)
;;     doom-variable-pitch-font (font-spec :family "Iosevka" :size 13))

;; Fira
                                        ; (setq doom-font (font-spec :family "Fira Code" :size 13)
                                        ;      doom-unicode-font (font-spec :family "Fira Mono" :size 13)
                                        ;      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 13))

;; Package Lists
                                        ; (add-to-list 'package-archives
                                        ;              '("melpa" . "http://melpa.org/packages/") t)
                                        ; (add-to-list 'package-archives
                                        ;              '("melpa-stable" . "http://stable.melpa.org/packages/") t)
                                        ; (add-to-list 'package-archives
                                        ;          '("marmalade" . "https://marmalade-repo.org/packages/") t)
                                        ; (add-to-list 'package-archives
                                        ;              '("gnu elpa" . "https://elpa.gnu.org/packages/") t)

                                        ; Certificates
                                        ; (setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")

                                        ; Dictionary

                                        ; (setq ispell-program-name "aspell"
                                        ;       ispell-silently-savep t)

;; tools/lsp
;; (setq lsp-enable-file-watchers nil)

;; lang/latex
;; (setq-default TeX-engine 'xetex
;;               TeX-PDF-mode t
;;               TeX-master nil)

;; (setenv "PATH" (concat (getenv "PATH") ":/Library/TeX/texbin/"))
;; (setq exec-path (append exec-path '("/Library/TeX/texbin/")))

;; lang/cc
;; (after! ccls
;;   (setq ccls-initialization-options
;;         '(:clang (:extraArgs ["-isystem/Library/Developer/CommandLineTools/usr/include/c++/v1"
;;                               "-isystem/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include"
;;                               "-isystem/usr/local/include"
;;                               "-isystem/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/11.0.0/include"
;;                               "-isystem/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include"
;;                               "-isystem/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include"
;;                               "-isystem/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/System/Library/Frameworks"]
;;                   :resourceDir "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/11.0.0")))
;;   )

;; app/rss
                                        ; (add-hook! 'elfeed-show-mode-hook (text-scale-set 2))

;; tools/magit
;; (setq magit-save-repository-buffers nil)
;; magit-repository-directories '(("~/work" . 2))
;; transient-values '((magit-commit "--gpg-sign=5F6C0EA160557395"
;;                     (magit-rebase "--autosquash" "--gpg-sign=5F6C0EA160557395")
;;                     (magit-pull "--rebase" "--gpg-sign=5F6C0EA160557395"))))

;; editor/evil
;; (map! :n "C-h" 'evil-window-left
;;       :n "C-j" 'evil-window-down
;;       :n "C-k" 'evil-window-up
;;       :n "C-l" 'evil-window-right
;;
;;       ;; :m "M-j" '+default:multi-next-line
;;       ;; :m "M-k" '+default:multi-previous-line
;;
;;       (:map evil-treemacs-state-map
;;         "C-h" 'evil-window-left
;;         "C-l" 'evil-window-right))


;; :tools/macos
;; (when (eq system-type 'darwin) ;; macOS
;;   (setq ns-use-thin-smoothing t)
;;   ;; (mac-auto-operator-composition-mode)
;;   (add-to-list 'default-frame-alist '(inhibit-double-buffering . t))
;;   (add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
;;   (add-to-list 'default-frame-alist '(ns-appearance . dark))
;;   (add-hook 'window-setup-hook #'toggle-frame-maximized))

;; lang/org
;; (setq org-dir "~/.org"
;;       org-directory "~/.org/"
;;       org-ellipsis " ▼ ")

;; editor/flycheck
;; https://emacs.stackexchange.com/questions/58153/why-does-flycheck-open-a-new-buffer-for-error-messages
(after! flycheck
  (defun flycheck-display-error-messages-truncated (errors)
    (when (and errors (flycheck-may-use-echo-area-p))
      (let ((messages (seq-map #'flycheck-error-format-message-and-id errors)))
        (message (string-join messages "\n\n") ;; here is the relevant modification
                 flycheck-error-message-buffer)
        ;; We cannot rely on `display-message-or-buffer' returning the right
        ;; window. See URL `https://github.com/flycheck/flycheck/issues/1643'.
        (-when-let ((buf (get-buffer flycheck-error-message-buffer)))
          (with-current-buffer buf
            (unless (derived-mode-p 'flycheck-error-message-mode)
              (flycheck-error-message-mode)))))))

  (setq flycheck-check-syntax-automatically '(save))
  (setq flycheck-display-errors-function #'flycheck-display-error-messages-truncated))
  

;; (setq flycheck-checker-error-threshold 666)
;; (mapc 'lsp-ui-flycheck-add-mode '(typescript-mode js-mode css-mode vue-html-mode))

;; (defun flycheck-display-error-messages-truncated (errors)
;;   (when (and errors (flycheck-may-use-echo-area-p))
;;     (let ((messages (seq-map #'flycheck-error-format-message-and-id errors)))
;;       (message (string-join messages "\n\n") ;; here is the relevant modification
;;                flycheck-error-message-buffer)
;;       ;; We cannot rely on `display-message-or-buffer' returning the right
;;       ;; window. See URL `https://github.com/flycheck/flycheck/issues/1643'.
;;       (-when-let ((buf (get-buffer flycheck-error-message-buffer)))
;;         (with-current-buffer buf
;;           (unless (derived-mode-p 'flycheck-error-message-mode)
;;             (flycheck-error-message-mode)))))))

;; (use-package flycheck
;;   :ensure t
;;   :init (global-flycheck-mode)
;;   :config
;;   (setq flycheck-check-syntax-automatically '(save))
;;   (setq flycheck-display-errors-function #'flycheck-display-error-messages-truncated))

;; lang/python
;; https://github.com/hlissner/doom-emacs/issues/212 FIXME install pyenv?
;; (when (and (executable-find "python3")
;;              (string= python-shell-interpreter "python"))
;;     (setq python-shell-interpreter "python3"))
;;
;;   ;; Env vars
;;   (with-eval-after-load 'exec-path-from-shell
;;     (exec-path-from-shell-copy-env "PYTHONPATH"))

;;;  lang/plantuml
;; (org-babel-do-load-languages
;;  'org-babel-load-languages
;;  '((plantuml . t))) ;; Add Plant UML to Org


;; NOTE Review upstream

;; (defvar xdg-data (getenv "XDG_DATA_HOME"))
;; (defvar xdg-bin (getenv "XDG_BIN_HOME"))
;; (defvar xdg-cache (getenv "XDG_CACHE_HOME"))
;; (defvar xdg-config (getenv "XDG_CONFIG_HOME"))


;;     +workspaces-switch-project-function #'ignore


;; (add-to-list 'org-modules 'org-habit t)


;;     ;;
;;     ;; Host-specific config

;;     (when (equal (system-name) "triton")
;;       ;; I've swapped these keys on my keyboard
;;       (setq x-super-keysym 'meta
;;             x-meta-keysym  'super))

;;     (pcase (system-name)
;;       ("halimede"
;;        (setq doom-font (font-spec :family "Input Mono Narrow" :size 9)))
;;       (_
;;        (setq doom-font (font-spec :family "Input Mono Narrow" :size 12)
;;              +modeline-height 25)))

;;     ; (:when IS-LINUX
;;     ;   "s-x" #'execute-extended-command
;;     ;   "s-;" #'eval-expression
;;     ;   ;; use super for window/frame navigation/manipulation
;;     ;   "s-w" #'delete-window
;;     ;   "s-W" #'delete-frame
;;     ;   "s-n" #'+default/new-buffer
;;     ;   "s-N" #'make-frame
;;     ;   "s-q" (if (daemonp) #'delete-frame #'evil-quit-all)
;;     ;   ;; Restore OS undo, save, copy, & paste keys (without cua-mode, because
;;     ;   ;; it imposes some other functionality and overhead we don't need)
;;     ;   "s-z" #'undo
;;     ;   "s-c" (if (featurep 'evil) #'evil-yank #'copy-region-as-kill)
;;     ;   "s-v" #'yank
;;     ;   "s-s" #'save-buffer
;;     ;   ;; Buffer-local font scaling
;;     ;   "s-+" (λ! (text-scale-set 0))
;;     ;   "s-=" #'text-scale-increase
;;     ;   "s--" #'text-scale-decrease
;;     ;   ;; Conventional text-editing keys
;;     ;   "s-a" #'mark-whole-buffer
;;     ;   :gi [s-return]    #'+default/newline-below
;;     ;   :gi [s-S-return]  #'+default/newline-above
;;     ;   :gi [s-backspace] #'doom/backward-kill-to-bol-and-indent)

;;     ; :leader
;;     ; (:prefix "f"
;;     ;   :desc "Find file in dotfiles" "t" #'+hlissner/find-in-dotfiles
;;     ;   :desc "Browse dotfiles"       "T" #'+hlissner/browse-dotfiles)
;;     ; (:prefix "n"
;;     ;   :desc "Open mode notes"       "m" #'+hlissner/find-notes-for-major-mode
;;     ;   :desc "Open project notes"    "p" #'+hlissner/find-notes-for-project))


;;     ; ;;
;;     ; ;; Modules

;;     ; ;; emacs/eshell
;;     ; (after! eshell
;;     ;   (set-eshell-alias!
;;     ;    "f"   "find-file $1"
;;     ;    "l"   "ls -lh"
;;     ;    "d"   "dired $1"
;;     ;    "gl"  "(call-interactively 'magit-log-current)"
;;     ;    "gs"  "magit-status"
;;     ;    "gc"  "magit-commit"))

;;     ; ;;
;;     ; ;; Custom

;;     ; (def-project-mode! +javascript-screeps-mode
;;     ;   :match "/screeps\\(?:-ai\\)?/.+$"
;;     ;   :modes (+javascript-npm-mode)
;;     ;   :add-hooks (+javascript|init-screeps-mode)
;;     ;   :on-load (load! "lisp/screeps"))
