(defun grayscale (colors-raw)
  (let* ((colors (seq-rest colors-raw))
         (red (string-to-number (seq-take colors 2) 16))
         (green (string-to-number (seq-take (seq-drop colors 2) 2) 16))
         (blue (string-to-number (seq-take (seq-take (seq-drop colors 2) 2) 2) 16))
         (average (/ (+ red green blue) 3))
         (average-s (string-replace " " "0" (format "%2x" average)))
         (result (concat "#" average-s average-s average-s)))
    result))

(defun grayscale-strings-in-buffer ()
  (interactive)
  (query-replace-regexp "\"(#\w\w\w\w\w\w)\"" "\"\,(grayscale \1)\""))

;; Debug
(add-to-list 'custom-theme-load-path default-directory)
