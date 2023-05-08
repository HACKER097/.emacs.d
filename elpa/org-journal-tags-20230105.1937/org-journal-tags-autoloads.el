;;; org-journal-tags-autoloads.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "org-journal-tags" "org-journal-tags.el" (0
;;;;;;  0 0 0))
;;; Generated autoloads from org-journal-tags.el

(autoload 'org-journal-tags-process-buffer "org-journal-tags" "\
Update the org-journal-tags with the current buffer.

By default it only updates the :tags part of
`org-journal-tags-db'.  If PROCESS-FILE is non-nil, it also
updates the :file part.  The latter happens if the function is
called interactively.

\(fn &optional PROCESS-FILE)" t nil)

(autoload 'org-journal-tags-db-sync "org-journal-tags" "\
Update the org-journal-tags database with all journal files." t nil)

(autoload 'org-journal-tags-prop-set "org-journal-tags" "\
Set up the \"tags\" property of the current org-journal section." t nil)

(autoload 'org-journal-tags-insert-tag "org-journal-tags" "\
Insert org-journal tag at point.

PREFIX is the universal prefix argument.  If invoked with
\\[universal-argument], then first query for the kind of tag, then for
the tag itself from the set of already used tags of that kind.

If invoked with double \\[universal-argument], then query the tag
from the kind-specific source instead of already used tags, if such a
source is available.

\(fn PREFIX)" t nil)

(defvar org-journal-tags-autosync-mode nil "\
Non-nil if Org-Journal-Tags-Autosync mode is enabled.
See the `org-journal-tags-autosync-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `org-journal-tags-autosync-mode'.")

(custom-autoload 'org-journal-tags-autosync-mode "org-journal-tags" nil)

(autoload 'org-journal-tags-autosync-mode "org-journal-tags" "\
Automatically update the org-journal-tags database.

This is a minor mode.  If called interactively, toggle the
`Org-Journal-Tags-Autosync mode' mode.  If the prefix argument is
positive, enable the mode, and if it is zero or negative, disable
the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `(default-value \\='org-journal-tags-autosync-mode)'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

This does two things:
- sets up individual org journal buffers to update to the database
  after save.
- sets up saving the database on exit from Emacs.

If you don't want to turn this on, you can manually call:
- `org-journal-tags-process-buffer' to process the current org-journal
  buffer
- `org-journal-tags-db-sync' to sync the filesystem
- `org-journal-tags-db-save' to save the database

\(fn &optional ARG)" t nil)

(autoload 'org-journal-tags-status "org-journal-tags" "\
Open org-journal-tags status buffer." t nil)

(register-definition-prefixes "org-journal-tags" '("org-journal-tags-"))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; org-journal-tags-autoloads.el ends here
