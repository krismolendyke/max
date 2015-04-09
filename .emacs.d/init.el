;;; init.el --- Bootstrap Emacs to an `org-mode` initialization file.

;;; Commentary:
;;
;; This file does just enough to get Emacs to initialize itself with
;; an `org-mode' file.

;;; Code:

;;; Disable the default Emacs splash screen from being shown so that
;;; the `max/init-file' can be shown instead.
(setq inhibit-startup-screen t)

(defconst max/init-file (expand-file-name "max.org")
  "The main `org-mode' initialization file.")

(defun max/after-init-hook ()
  "Finish Emacs initialization via `org-mode'!"
  (require 'org)
  (org-babel-load-file max/init-file t))

(add-hook 'after-init-hook 'max/after-init-hook)

;;; init.el ends here
