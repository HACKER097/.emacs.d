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
 '(connection-local-criteria-alist
   '(((:application tramp)
      tramp-connection-local-default-system-profile tramp-connection-local-default-shell-profile)))
 '(connection-local-profile-alist
   '((tramp-connection-local-darwin-ps-profile
      (tramp-process-attributes-ps-args "-acxww" "-o" "pid,uid,user,gid,comm=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ" "-o" "state=abcde" "-o" "ppid,pgid,sess,tty,tpgid,minflt,majflt,time,pri,nice,vsz,rss,etime,pcpu,pmem,args")
      (tramp-process-attributes-ps-format
       (pid . number)
       (euid . number)
       (user . string)
       (egid . number)
       (comm . 52)
       (state . 5)
       (ppid . number)
       (pgrp . number)
       (sess . number)
       (ttname . string)
       (tpgid . number)
       (minflt . number)
       (majflt . number)
       (time . tramp-ps-time)
       (pri . number)
       (nice . number)
       (vsize . number)
       (rss . number)
       (etime . tramp-ps-time)
       (pcpu . number)
       (pmem . number)
       (args)))
     (tramp-connection-local-busybox-ps-profile
      (tramp-process-attributes-ps-args "-o" "pid,user,group,comm=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ" "-o" "stat=abcde" "-o" "ppid,pgid,tty,time,nice,etime,args")
      (tramp-process-attributes-ps-format
       (pid . number)
       (user . string)
       (group . string)
       (comm . 52)
       (state . 5)
       (ppid . number)
       (pgrp . number)
       (ttname . string)
       (time . tramp-ps-time)
       (nice . number)
       (etime . tramp-ps-time)
       (args)))
     (tramp-connection-local-bsd-ps-profile
      (tramp-process-attributes-ps-args "-acxww" "-o" "pid,euid,user,egid,egroup,comm=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ" "-o" "state,ppid,pgid,sid,tty,tpgid,minflt,majflt,time,pri,nice,vsz,rss,etimes,pcpu,pmem,args")
      (tramp-process-attributes-ps-format
       (pid . number)
       (euid . number)
       (user . string)
       (egid . number)
       (group . string)
       (comm . 52)
       (state . string)
       (ppid . number)
       (pgrp . number)
       (sess . number)
       (ttname . string)
       (tpgid . number)
       (minflt . number)
       (majflt . number)
       (time . tramp-ps-time)
       (pri . number)
       (nice . number)
       (vsize . number)
       (rss . number)
       (etime . number)
       (pcpu . number)
       (pmem . number)
       (args)))
     (tramp-connection-local-default-shell-profile
      (shell-file-name . "/bin/sh")
      (shell-command-switch . "-c"))
     (tramp-connection-local-default-system-profile
      (path-separator . ":")
      (null-device . "/dev/null"))))
 '(custom-enabled-themes '(doom-moonlight))
 '(custom-safe-themes
   '("991ca4dbb23cab4f45c1463c187ac80de9e6a718edc8640003892a2523cb6259" "2721b06afaf1769ef63f942bf3e977f208f517b187f2526f0e57c1bd4a000350" "e5494adf200eeff1505839672150dde6053e086869189c381b1ce9b792dda3a8" "0f4182fe2e7d9020f9ac275b11ca6f7d5a4cb4937764f3f8f73ab005c1fd6a23" "680f62b751481cc5b5b44aeab824e5683cf13792c006aeba1c25ce2d89826426" "6945dadc749ac5cbd47012cad836f92aea9ebec9f504d32fe89a956260773ca4" "adaf421037f4ae6725aa9f5654a2ed49e2cd2765f71e19a7d26a454491b486eb" "c865644bfc16c7a43e847828139b74d1117a6077a845d16e71da38c8413a5aaa" "ae426fc51c58ade49774264c17e666ea7f681d8cae62570630539be3d06fd964" "4fda8201465755b403a33e385cf0f75eeec31ca8893199266a6aeccb4adedfa4" "8b6506330d63e7bc5fb940e7c177a010842ecdda6e1d1941ac5a81b13191020e" "ddffe74bc4bf2c332c2c3f67f1b8141ee1de8fd6b7be103ade50abb97fe70f0c" "1a1ac598737d0fcdc4dfab3af3d6f46ab2d5048b8e72bc22f50271fd6d393a00" "be84a2e5c70f991051d4aaf0f049fa11c172e5d784727e0b525565bb1533ec78" "f053f92735d6d238461da8512b9c071a5ce3b9d972501f7a5e6682a90bf29725" "aec7b55f2a13307a55517fdf08438863d694550565dee23181d2ebd973ebd6b8" "512ce140ea9c1521ccaceaa0e73e2487e2d3826cc9d287275550b47c04072bc4" "631c52620e2953e744f2b56d102eae503017047fb43d65ce028e88ef5846ea3b" "2dd4951e967990396142ec54d376cced3f135810b2b69920e77103e0bcedfba9" "7a424478cb77a96af2c0f50cfb4e2a88647b3ccca225f8c650ed45b7f50d9525" "2e05569868dc11a52b08926b4c1a27da77580daa9321773d92822f7a639956ce" "016f665c0dd5f76f8404124482a0b13a573d17e92ff4eb36a66b409f4d1da410" "ff24d14f5f7d355f47d53fd016565ed128bf3af30eb7ce8cae307ee4fe7f3fd0" "da75eceab6bea9298e04ce5b4b07349f8c02da305734f7c0c8c6af7b5eaa9738" "3fe1ebb870cc8a28e69763dde7b08c0f6b7e71cc310ffc3394622e5df6e4f0da" "7e377879cbd60c66b88e51fad480b3ab18d60847f31c435f15f5df18bdb18184" "2f8eadc12bf60b581674a41ddc319a40ed373dd4a7c577933acaff15d2bf7cc6" "944d52450c57b7cbba08f9b3d08095eb7a5541b0ecfb3a0a9ecd4a18f3c28948" "60ada0ff6b91687f1a04cc17ad04119e59a7542644c7c59fc135909499400ab8" "276c08753eae8e13d7c4f851432b627af58597f2d57b09f790cb782f6f043966" "8d3ef5ff6273f2a552152c7febc40eabca26bae05bd12bc85062e2dc224cde9a" default))
 '(font-use-system-font t)
 '(highlight-indent-guides-method 'character)
 '(mini-frame-color-shift-step 0)
 '(mini-frame-internal-border-color "SteelBlue4")
 '(mini-frame-show-parameters '((top . 50) (width . 0.7) (left . 0.5) (border-width . 1)))
 '(package-selected-packages
   '(swiper centaur-tabs rainbow-delimiters org-present rainbow-mode scroll-on-jump minimap good-scroll doom-modeline treemacs-nerd-icons web-mode js2-mode markdown-mode capf-autosuggest latex-math-preview corfu-candidate-overlay orderless corfu kind-icon tree-sitter treesit-auto all-the-icons haki-theme fireplace tree-sitter-indent highlight-indent-guides age ement svelte-mode le-thesaurus writeroom-mode ox-hugo org-roam-ui org-roam org-pretty-tags org-journal-tags org-journal catppuccin-theme all-the-icons-dired fill-column-indicator python-mode corfu-prescient beacon cape all-the-icons-completion magit treemacs-all-the-icons treemacs emmet-mode rust-mode tree-sitter-langs org-bullets vertico mini-frame which-key smooth-scrolling move-text vterm windresize smartparens page-break-lines dashboard doom-themes))
 '(smtpmail-smtp-server "imap.gmail.com")
 '(smtpmail-smtp-service 25)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Cascadia Code" :foundry "SAJA" :slant normal :weight regular :height 98 :width normal))))
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


; Tabs #######################################################
(setq centaur-tabs-style "bar")
(setq centaur-tabs-set-icons t)
(setq centaur-tabs-plain-icons t)
(setq centaur-tabs-set-bar 'over)
(setq centaur-tabs-set-modified-marker t)
(setq centaur-tabs-adjust-buffer-order t)
(setq centaur-tabs-modified-marker "-")

(add-hook 'vterm-mode-hook 'centaur-tabs-local-mode)

(centaur-tabs-mode)

; Preferences ################################################



(cua-mode)
(which-key-mode)

(require 'smartparens-config)
(require 'treemacs-all-the-icons)

(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(smartparens-global-mode t)
(rainbow-delimiters-mode t)

(setq backup-directory-alist '((".*" . "~/.local/share/Trash/files/")))
(setq-default cursor-type 'bar)
(setq doom-themes-treemacs-theme "doom-colors")
(setq vterm-shell "/bin/zsh")
(setq make-backup-files nil) ; stop creating ~ files
(set-face-attribute 'default nil :height 110)

(treemacs-load-theme "all-the-icons")

(defalias 'yes-or-no-p 'y-or-n-p)

(add-hook 'find-file-hook
          (lambda ()
            (when (file-regular-p buffer-file-name)
              (display-line-numbers-mode))))

(toggle-frame-fullscreen)

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

(defun indent-region-custom(numSpaces)
    (progn 
        ; default to start and end of current line
        (setq regionStart (line-beginning-position))
        (setq regionEnd (line-end-position))
        
        ; if there's a selection, use that instead of the current line
        (when (use-region-p)
            (setq regionStart (region-beginning))
            (setq regionEnd (region-end))
        )
        
        (save-excursion ; restore the position afterwards            
            (goto-char regionStart) ; go to the start of region
            (setq start (line-beginning-position)) ; save the start of the line
            (goto-char regionEnd) ; go to the end of region
            (setq end (line-end-position)) ; save the end of the line
            
            (indent-rigidly start end numSpaces) ; indent between start and end
            (setq deactivate-mark nil) ; restore the selected region
        )
    )
)

(defun untab-region (N)
    (interactive "p")
    (indent-region-custom -4)
)

(defun tab-region (N)
    (interactive "p")
    (if (active-minibuffer-window)
        (minibuffer-complete)    ; tab is pressed in minibuffer window -> do completion
    ; else
    (if (string= (buffer-name) "*shell*")
        (comint-dynamic-complete) ; in a shell, use tab completion
    ; else
    (if (use-region-p)    ; tab is pressed is any other buffer -> execute with space insertion
        (indent-region-custom 4) ; region was selected, call indent-region-custom
        (insert "    ") ; else insert four spaces as expected
    )))
)

; My hooks #################################################

(add-hook 'treemacs-mode-hook 'toggle-mode-line)

; Keybindings ##############################################
(global-set-key (kbd "C-<iso-lefttab>") 'untab-region)
(global-set-key (kbd "C-<tab>") 'tab-region)

(global-set-key (kbd "C-s-<right>") #'centaur-tabs-move-current-tab-to-right)
(global-set-key (kbd "C-s-<left>") #'centaur-tabs-move-current-tab-to-left)
(global-set-key (kbd "C-s") #'swiper)
(global-set-key (kbd "s-l") #'centaur-tabs-switch-group)
(global-set-key (kbd "M-l") #'centaur-tabs-ace-jump)
(global-set-key (kbd "C-x w") #'windresize)
(global-set-key (kbd "C-b") 'switch-to-buffer)
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

(setq dashboard-items '((agenda . 5)
			(recents  . 5)
			))

(defun display-startup-echo-area-message ()
  (message nil))

; Modeline #################################################

(doom-modeline-mode t)
(setq doom-modeline-buffer-modification-icon nil)


; Org mode #################################################
(setq org-startup-folded t)
(setq org-ellipsis ":")
(setq org-bullets-bullet-list '("●" "○" "◌" "✸" "★" "✭" "☆" "⚬"))
(setq org-babel-python-command "python3.10")
(setq org-startup-with-inline-images t)
(setq org-support-shift-select t)
(setq org-journal-encrypt-journal t)

(setq org-agenda-files '("~/org/Tasks.org"))
(setq org-agenda-start-with-log-mode t)
(setq org-log-done 'time)
(setq org-log-into-drawer t)

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
  (define-key corfu-map (kbd "<RET>") nil)
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
  ;;(add-to-list 'completion-at-point-functions #'eglot-completion-at-point)
  ;;(add-to-list 'completion-at-point-functions #'lsp-completion-at-point)
  (add-to-list 'completion-at-point-functions #'cape-history)
  (add-to-list 'completion-at-point-functions #'cape-keyword)
  (add-to-list 'completion-at-point-functions #'cape-dabbrev)
  (add-to-list 'completion-at-point-functions #'cape-file)
  (add-to-list 'completion-at-point-functions #'cape-elisp-block)
  (add-to-list 'completion-at-point-functions #'cape-tex)
  ;;(add-to-list 'completion-at-point-functions #'cape-sgml)
  ;;(add-to-list 'completion-at-point-functions #'cape-rfc1345)
  ;;(add-to-list 'completion-at-point-functions #'cape-abbrev)
  (add-to-list 'completion-at-point-functions #'cape-dict)
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


(use-package scroll-on-jump
  :custom
  (scroll-on-jump-smooth nil)
  (scroll-on-jump-duration 0.1337)
  :config
  (scroll-on-jump-advice-add beginning-of-buffer)
  (scroll-on-jump-advice-add end-of-buffer)
  (scroll-on-jump-advice-add flyspell-goto-next-error)
  (when (featurep 'smartparens)
    (define-key smartparens-mode-map
      (kbd "C-M-f") (scroll-on-jump-interactive 'sp-forward-sexp))
    (define-key smartparens-mode-map
      (kbd "C-M-b") (scroll-on-jump-interactive 'sp-backward-sexp)))
  (scroll-on-jump-with-scroll-advice-add scroll-up-command)
  (scroll-on-jump-with-scroll-advice-add scroll-down-command)
  (scroll-on-jump-with-scroll-advice-add isearch-update)
  (scroll-on-jump-with-scroll-advice-add recenter-top-bottom))

