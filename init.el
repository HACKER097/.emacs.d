;; Emacs config rewritten

; MELPA 
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(doom-moonlight))
 '(custom-safe-themes
   '("60ada0ff6b91687f1a04cc17ad04119e59a7542644c7c59fc135909499400ab8" "276c08753eae8e13d7c4f851432b627af58597f2d57b09f790cb782f6f043966" "8d3ef5ff6273f2a552152c7febc40eabca26bae05bd12bc85062e2dc224cde9a" default))
 '(mini-frame-color-shift-step 0)
 '(mini-frame-internal-border-color "SteelBlue4")
 '(mini-frame-show-parameters '((top . 50) (width . 0.7) (left . 0.5) (border-width . 1)))
 '(package-selected-packages
   '(eat age ement svelte-mode le-thesaurus writeroom-mode ox-hugo org-roam-ui org-roam org-pretty-tags org-journal-tags org-journal catppuccin-theme telephone-line all-the-icons-dired fill-column-indicator python-mode nlinum corfu-prescient beacon cape all-the-icons-completion magit treemacs-all-the-icons treemacs emmet-mode rust-mode tree-sitter-langs org-bullets vertico mini-frame which-key smooth-scrolling move-text vterm windresize smartparens page-break-lines dashboard doom-themes))
 '(smtpmail-smtp-server "imap.gmail.com")
 '(smtpmail-smtp-service 25))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-level-1 ((t (:inherit outline-1 :height 1.5))))
 '(org-level-10 ((t (:inherit outline-10 :height 1.0))))
 '(org-level-2 ((t (:inherit outline-2 :height 1.3))))
 '(org-level-3 ((t (:inherit outline-3 :height 1.2))))
 '(org-level-4 ((t (:inherit outline-4 :height 1.1))))
 '(org-level-5 ((t (:inherit outline-5 :height 1.05))))
 '(org-level-6 ((t (:inherit outline-6 :height 1.0))))
 '(org-level-7 ((t (:inherit outline-7 :height 1.0))))
 '(org-level-8 ((t (:inherit outline-8 :height 1.0))))
 '(org-level-9 ((t (:inherit outline-9 :height 1.0))))
 '(whitespace-tab ((t (:foreground "#636363")))))

; Icons ######################################################

(use-package all-the-icons
  :if (display-graphic-p))
(setq inhibit-compacting-font-caches t)

; Preferences ################################################

(add-to-list 'default-frame-alist '(fullscreen . maximized))

;;(cua-mode)
(which-key-mode)

(require 'smooth-scrolling)
(require 'smartparens-config)
(require 'treemacs-all-the-icons)

(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(smooth-scrolling-mode 1)
(smartparens-global-mode t)
(smooth-scrolling-mode 1)

(setq smooth-scroll-margin 1)
(setq-default cursor-type 'bar)
(setq doom-themes-treemacs-theme "doom-colors")
(setq vterm-shell "/bin/fish")
(set-face-attribute 'default nil :height 110)

(treemacs-load-theme "all-the-icons")

(defalias 'yes-or-no-p 'y-or-n-p)

(add-hook 'find-file-hook
          (lambda ()
            (when (file-regular-p buffer-file-name)
              (nlinum-mode))))


; M-x setup #################################################

(mini-frame-mode)
(vertico-mode)
(savehist-mode)
(marginalia-mode)
(setq marginalia-truncate-width 1000)


; My funcs ##################################################

(defun toggle-mode-line () "toggles the modeline on and off"
  (interactive) 
  (setq mode-line-format
    (if (equal mode-line-format nil)
        (default-value 'mode-line-format)) )
  (redraw-display))

(defun vterm-split ()
  (interactive)
  (split-window-below)
  (other-window 1)
  (vterm)
  (toggle-mode-line))


(defun show-all-previews ()
  "Show all LaTeX previews in the current Org mode buffer."
  (interactive)
  (org-latex-preview '(16)))


; Keybindings ##############################################

(global-set-key (kbd "C-x w") #'windresize)
(global-set-key (kbd "s-v") 'vterm-split)
(global-set-key (kbd "M-s M-s") 'ispell-word)
(global-set-key (kbd "M-o") 'ace-window)
(global-set-key (kbd "M-[") 'le-thesaurus-get-antonyms)
(global-set-key (kbd "M-]") 'le-thesaurus-get-synonyms)
(global-set-key [M-up] 'move-text-up)
(global-set-key [M-down] 'move-text-down)


; Dashboard ################################################
(dashboard-setup-startup-hook)
(add-hook 'dashboard-mode-hook #'page-break-lines-mode)

(set-face-attribute 'dashboard-text-banner nil :weight 'bold)

(setq dashboard-banner-logo-title "BUILD EPIC SHIT")
(setq dashboard-startup-banner "~/.emacs.d/PROFILE_TRANSPARENT_SMALL.png")
(setq dashboard-set-heading-icons t)
(setq dashboard-set-file-icons t)
(setq dashboard-set-init-info nil)
(setq dashboard-page-separator "\n\f\n")


(defun display-startup-echo-area-message ()
  (message nil))

; Modeline #################################################

(setq telephone-line-lhs
      '((evil   . (telephone-line-evil-tag-segment))
        (accent . (telephone-line-vc-segment
                   telephone-line-erc-modified-channels-segment
                   telephone-line-process-segment))
        (nil    . (telephone-line-minor-mode-segment
                   telephone-line-buffer-segment))))
(setq telephone-line-rhs
      '((nil    . (telephone-line-misc-info-segment))
        (accent . (telephone-line-major-mode-segment))
        (evil   . (telephone-line-airline-position-segment))))

(telephone-line-mode t)

; Org mode #################################################

(global-visual-line-mode)

(setq org-startup-folded t)
(setq org-ellipsis ":")
(setq org-bullets-bullet-list '("●" "◉" "○" "◌" "✸" "★" "✭" "☆" "⚬"))
(setq org-babel-python-command "python3.10")
(setq org-babel-python-command "python3.10")
(setq org-startup-with-inline-images t)
(setq org-support-shift-select t)
(setq org-journal-encrypt-journal t)

(require 'org-bullets)
(require 'org-tempo)
(require 'org-download)

(add-hook 'org-mode-hook #'show-all-previews)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
(add-hook 'org-mode-hook (lambda () (org-indent-mode 1)))


(plist-put org-format-latex-options :scale 1.5)
(org-babel-do-load-languages
 'org-babel-load-languages
 '((python . t)))


; Programming ##############################################

(unless (package-installed-p 'tree-sitter)
  (package-refresh-contents)
  (package-install 'tree-sitter))

(unless (package-installed-p 'tree-sitter-langs)
  (package-refresh-contents)
  (package-install 'tree-sitter-langs))

;; Enable tree-sitter-mode globally for supported modes
(global-tree-sitter-mode)
;; Enable tree-sitter-hl-mode globally for supported modes
(add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode)

;; Load some language grammars
(require 'tree-sitter-langs)
;; Use the bundled grammars
(tree-sitter-require 'c)
(tree-sitter-require 'python)
(tree-sitter-require 'rust)
;; Register the languages for the major modes
(add-to-list 'tree-sitter-major-mode-language-alist '(c-mode . c))
(add-to-list 'tree-sitter-major-mode-language-alist '(python-mode . python))
(add-to-list 'tree-sitter-major-mode-language-alist '(rust-mode . rust))
(add-to-list 'tree-sitter-major-mode-language-alist '(js-mode . javascript))
(add-to-list 'tree-sitter-major-mode-language-alist '(c++-mode . c-sharp))

; Corfu #####################################################

(use-package corfu
  :init
  (global-corfu-mode)
  :custom
  (corfu-cycle t)                ;; Enable cycling for `corfu-next/previous'
  (corfu-auto t)                 ;; Enable auto completion
  (corfu-auto-delay 0)
  (corfu-auto-prefix 1)
  (corfu-separator ?\s)          ;; Orderless field separator
  (corfu-quit-no-match 'separator) ; Don't quit if there is `corfu-separator' inserted
  ;; (corfu-quit-at-boundary nil)   ;; Never quit at completion boundary
  ;; (corfu-quit-no-match nil)      ;; Never quit, even if there is no match
  ;; (corfu-preview-current nil)    ;; Disable current candidate preview
  ;; (corfu-preselect-first nil)    ;; Disable candidate preselection
  ;; (corfu-on-exact-match nil)     ;; Configure handling of exact matches
  (corfu-echo-documentation nil) ;; Disable documentation in the echo area
  ;; (corfu-scroll-margin 5)        ;; Use scroll margin

  ;; (corfu-min-width 80)
  ;; (corfu-max-width corfu-min-width)     ; Always have the same width
  ;; (corfu-count 14)
  (corfu-scroll-margin 4)

  :config
  (define-key corfu-map (kbd "<tab>") #'corfu-complete)
  (defun contrib/corfu-enable-always-in-minibuffer ()
    "Enable Corfu in the minibuffer if Vertico is not active.
Useful for prompts such as `eval-expression' and `shell-command'."
    (unless (bound-and-true-p vertico--input)
      (corfu-mode 1)))

  (add-hook 'minibuffer-setup-hook #'contrib/corfu-enable-always-in-minibuffer 1)

  (defun corfu-move-to-minibuffer ()
    (interactive)
    (let (completion-cycle-threshold completion-cycling)
      (apply #'consult-completion-in-region completion-in-region--data)))
  (define-key corfu-map "\M-m" #'corfu-move-to-minibuffer))

(use-package cape
  ;; Bind dedicated completion commands
  ;; Alternative prefix keys: C-c p, M-p, M-+, ...
  :bind (("C-c p p" . completion-at-point) ;; capf
         ("C-c p t" . complete-tag)        ;; etags
         ("C-c p d" . cape-dabbrev)        ;; or dabbrev-completion
         ("C-c p h" . cape-history)
         ("C-c p f" . cape-file)
         ("C-c p k" . cape-keyword)
         ("C-c p s" . cape-symbol)
         ("C-c p a" . cape-abbrev)
         ("C-c p l" . cape-line)
         ("C-c p w" . cape-dict)
         ("C-c p \\" . cape-tex)
         ("C-c p _" . cape-tex)
         ("C-c p ^" . cape-tex)
         ("C-c p &" . cape-sgml)
         ("C-c p r" . cape-rfc1345))
  :init
  ;; Add `completion-at-point-functions', used by `completion-at-point'.
  ;; NOTE: The order matters!
  (add-to-list 'completion-at-point-functions #'cape-history)
  (add-to-list 'completion-at-point-functions #'cape-keyword)
  (add-to-list 'completion-at-point-functions #'cape-dabbrev)
  (add-to-list 'completion-at-point-functions #'cape-file)
  (add-to-list 'completion-at-point-functions #'cape-elisp-block)
  ;;(add-to-list 'completion-at-point-functions #'cape-tex)
  ;;(add-to-list 'completion-at-point-functions #'cape-sgml)
  ;;(add-to-list 'completion-at-point-functions #'cape-rfc1345)
  ;;(add-to-list 'completion-at-point-functions #'cape-abbrev)
  ;;(add-to-list 'completion-at-point-functions #'cape-dict)
  ;;(add-to-list 'completion-at-point-functions #'cape-symbol)
  ;;(add-to-list 'completion-at-point-functions #'cape-line)
)


(setq-local corfu-auto t
            corfu-auto-delay 2
            corfu-auto-prefix 0
            completion-styles '(basic))

(use-package orderless
  :init
  ;; Configure a custom style dispatcher (see the Consult wiki)
  ;; (setq orderless-style-dispatchers '(+orderless-dispatch)
  ;;       orderless-component-separator #'orderless-escapable-split-on-space)
  (setq completion-styles '(orderless basic)
        completion-category-defaults nil
        completion-category-overrides '((file (styles . (partial-completion))))))

(use-package kind-icon
  :ensure t
  :after corfu
  :custom
  (kind-icon-default-face 'corfu-default) ; to compute blended backgrounds correctly
  :config
  (add-to-list 'corfu-margin-formatters #'kind-icon-margin-formatter))

; Spelling ##############################################

(setq ispell-program-name "aspell")
