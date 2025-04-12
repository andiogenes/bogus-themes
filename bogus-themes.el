;;; bogus-themes.el --- Modus themes for GNU Emacs but in shades of gray -*- lexical-binding:t -*-

;;; Code:



;;;; Add themes from package to path

;;;###autoload
(when load-file-name
  (let ((dir (file-name-directory load-file-name)))
    (unless (equal dir (expand-file-name "themes/" data-directory))
      (add-to-list 'custom-theme-load-path dir))))

;;; bogus-themes.el ends here
