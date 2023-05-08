;;; corfu-prescient-autoloads.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "corfu-prescient" "corfu-prescient.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from corfu-prescient.el

(defvar corfu-prescient-mode nil "\
Non-nil if Corfu-Prescient mode is enabled.
See the `corfu-prescient-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `corfu-prescient-mode'.")

(custom-autoload 'corfu-prescient-mode "corfu-prescient" nil)

(autoload 'corfu-prescient-mode "corfu-prescient" "\
Minor mode to use prescient.el in Corfu menus.

This is a minor mode.  If called interactively, toggle the
`Corfu-Prescient mode' mode.  If the prefix argument is positive,
enable the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `(default-value \\='corfu-prescient-mode)'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

This mode will:
- if `corfu-prescient-override-sorting' is non-nil,
  configure `corfu-sort-override-function' and set
 `corfu-prescient-enable-filtering' to t

- if `corfu-prescient-enable-filtering' is non-nil,
  configure `corfu-sort-function'

- if `corfu-prescient-enable-filtering' is non-nil:
  - bind `prescient-toggle-map' to `M-s' in `corfu-map'
  - change `completion-stlyes' to `corfu-prescient-completion-styles'
  - apply `corfu-prescient-completion-category-overrides'
    to `completion-category-overrides'
  - set `completion-category-defaults' to nil

- advise `corfu-insert' to remember candidates

\(fn &optional ARG)" t nil)

(register-definition-prefixes "corfu-prescient" '("corfu-prescient-"))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; corfu-prescient-autoloads.el ends here
