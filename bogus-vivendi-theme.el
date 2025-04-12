;;; bogus-vivendi-theme.el --- Grayscale version of modus-vivendi theme -*- lexical-binding:t -*-

;; Copyright (c) ?

;; URL: https://github.com/andiogenes/bogus-themes
;; Keywords: faces, theme

;;; Code:



(eval-and-compile
  (unless (and (fboundp 'require-theme)
               load-file-name
               (equal (file-name-directory load-file-name)
                      (expand-file-name "themes/" data-directory))
               (require-theme 'modus-themes t))
    (require 'modus-themes))

;;;###theme-autoload
  (deftheme bogus-vivendi
    "Elegant, highly legible theme with a black background.
Conforms with the highest legibility standard for color contrast
between background and foreground in any given piece of text,
which corresponds to a minimum contrast in relative luminance of
7:1 (WCAG AAA standard)."
    :background-mode 'dark
    :kind 'color-scheme
    :family 'modus)

  (defconst bogus-vivendi-palette
    '(
;;; Basic values

      (bg-main          "#000000")
      (bg-dim           "#1e1e1e")
      (fg-main          "#ffffff")
      (fg-dim           "#989898")
      (fg-alt           "#d3d3d3")
      (bg-active        "#535353")
      (bg-inactive      "#303030")
      (border           "#646464")

;;; Common accent foregrounds

      (red             "#949494")
      (red-warmer      "#9c9c9c")
      (red-cooler      "#a9a9a9")
      (red-faint       "#b8b8b8")
      (red-intense     "#949494")
      (green           "#949494")
      (green-warmer    "#a0a0a0")
      (green-cooler    "#808080")
      (green-faint     "#b4b4b4")
      (green-intense   "#ababab")
      (yellow          "#c2c2c2")
      (yellow-warmer   "#d7d7d7")
      (yellow-cooler   "#bfbfbf")
      (yellow-faint    "#bebebe")
      (yellow-intense  "#efefef")
      (blue            "#848484")
      (blue-warmer     "#989898")
      (blue-cooler     "#7d7d7d")
      (blue-faint      "#a0a0a0")
      (blue-intense    "#707070")
      (magenta         "#c7c7c7")
      (magenta-warmer  "#b1b1b1")
      (magenta-cooler  "#a7a7a7")
      (magenta-faint   "#b2b2b2")
      (magenta-intense "#999999")
      (cyan            "#8c8c8c")
      (cyan-warmer     "#afafaf")
      (cyan-cooler     "#bbbbbb")
      (cyan-faint      "#b8b8b8")
      (cyan-intense    "#9f9f9f")

;;; Uncommon accent foregrounds

      (rust       "#9b9b9b")
      (gold       "#a4a4a4")
      (olive      "#b2b2b2")
      (slate      "#9c9c9c")
      (indigo     "#969696")
      (maroon     "#999999")
      (pink       "#aeaeae")

;;; Common accent backgrounds

      (bg-red-intense     "#494949")
      (bg-green-intense   "#666666")
      (bg-yellow-intense  "#696969")
      (bg-blue-intense    "#323232")
      (bg-magenta-intense "#454545")
      (bg-cyan-intense    "#4f4f4f")

      (bg-red-subtle      "#2a2a2a")
      (bg-green-subtle    "#2c2c2c")
      (bg-yellow-subtle   "#434343")
      (bg-blue-subtle     "#252525")
      (bg-magenta-subtle  "#3b3b3b")
      (bg-cyan-subtle     "#2a2a2a")

      (bg-red-nuanced     "#1b1b1b")
      (bg-green-nuanced   "#222222")
      (bg-yellow-nuanced  "#262626")
      (bg-blue-nuanced    "#141414")
      (bg-magenta-nuanced "#171717")
      (bg-cyan-nuanced    "#1c1c1c")

;;; Uncommon accent background and foreground pairs

      (bg-clay     "#292929")
      (fg-clay     "#c5c5c5")

      (bg-ochre    "#363636")
      (fg-ochre    "#d5d5d5")

      (bg-lavender "#343434")
      (fg-lavender "#cacaca")

      (bg-sage     "#303030")
      (fg-sage     "#dbdbdb")

;;; Graphs

      (bg-graph-red-0     "#595959")
      (bg-graph-red-1     "#3a3a3a")
      (bg-graph-green-0   "#a3a3a3")
      (bg-graph-green-1   "#505050")
      (bg-graph-yellow-0  "#e5e5e5")
      (bg-graph-yellow-1  "#969696")
      (bg-graph-blue-0    "#848484")
      (bg-graph-blue-1    "#292929")
      (bg-graph-magenta-0 "#a2a2a2")
      (bg-graph-magenta-1 "#555555")
      (bg-graph-cyan-0    "#acacac")
      (bg-graph-cyan-1    "#555555")

;;; Special purpose

      (bg-completion       "#3d3d3d")
      (bg-hover            "#575757")
      (bg-hover-secondary  "#535353")
      (bg-hl-line          "#353535")
      (bg-region           "#5a5a5a")
      (fg-region           "#ffffff")

      (bg-mode-line-active        "#505050")
      (fg-mode-line-active        "#ffffff")
      (border-mode-line-active    "#959595")
      (bg-mode-line-inactive      "#2d2d2d")
      (fg-mode-line-inactive      "#969696")
      (border-mode-line-inactive  "#606060")

      (modeline-err     "#c5c5c5")
      (modeline-warning "#d4d4d4")
      (modeline-info    "#d4d4d4")

      (bg-tab-bar      "#313131")
      (bg-tab-current  "#000000")
      (bg-tab-other    "#545454")

;;; Diffs

      (bg-added           "#252525")
      (bg-added-faint     "#1b1b1b")
      (bg-added-refine    "#353535")
      (bg-added-fringe    "#606060")
      (fg-added           "#cacaca")
      (fg-added-intense   "#c0c0c0")

      (bg-changed         "#343434")
      (bg-changed-faint   "#222222")
      (bg-changed-refine  "#4a4a4a")
      (bg-changed-fringe  "#7f7f7f")
      (fg-changed         "#efefef")
      (fg-changed-intense "#b5b5b5")

      (bg-removed         "#252525")
      (bg-removed-faint   "#191919")
      (bg-removed-refine  "#393939")
      (bg-removed-fringe  "#4e4e4e")
      (fg-removed         "#d4d4d4")
      (fg-removed-intense "#b5b5b5")

      (bg-diff-context    "#1a1a1a")

;;; Mappings

;;;; General mappings

      (fringe bg-dim)
      (cursor fg-main)

      (keybind blue-cooler)
      (name magenta)
      (identifier yellow-faint)

      (err red)
      (warning yellow-warmer)
      (info cyan-cooler)

      (underline-err red-intense)
      (underline-warning yellow)
      (underline-note cyan)

      (bg-prominent-err bg-red-intense)
      (fg-prominent-err fg-main)
      (bg-prominent-warning bg-yellow-intense)
      (fg-prominent-warning fg-main)
      (bg-prominent-note bg-cyan-intense)
      (fg-prominent-note fg-main)

      (bg-active-argument bg-yellow-nuanced)
      (fg-active-argument yellow-cooler)
      (bg-active-value bg-cyan-nuanced)
      (fg-active-value cyan-cooler)

;;;; Code mappings

      (bracket fg-main)
      (builtin magenta-warmer)
      (comment fg-dim)
      (constant blue-cooler)
      (delimiter fg-main)
      (docmarkup magenta-faint)
      (docstring cyan-faint)
      (fnname magenta)
      (keyword magenta-cooler)
      (number fg-main)
      (operator fg-main)
      (preprocessor red-cooler)
      (punctuation fg-main)
      (rx-backslash magenta)
      (rx-construct green-cooler)
      (string blue-warmer)
      (type cyan-cooler)
      (variable cyan)

;;;; Paren match

      (bg-paren-match        bg-cyan-subtle)
      (fg-paren-match        fg-main)
      (underline-paren-match unspecified)
      (bg-paren-expression   bg-yellow-nuanced)

;;;; Accent mappings

      (accent-0 blue-cooler)
      (accent-1 magenta-warmer)
      (accent-2 cyan-cooler)
      (accent-3 yellow)

;;;; Button mappings

      (fg-button-active fg-main)
      (fg-button-inactive fg-dim)
      (bg-button-active bg-active)
      (bg-button-inactive bg-dim)

;;;; Completion mappings

      (fg-completion-match-0 blue-cooler)
      (fg-completion-match-1 magenta-warmer)
      (fg-completion-match-2 cyan-cooler)
      (fg-completion-match-3 yellow)
      (bg-completion-match-0 unspecified)
      (bg-completion-match-1 unspecified)
      (bg-completion-match-2 unspecified)
      (bg-completion-match-3 unspecified)

;;;; Date mappings

      (date-common cyan)
      (date-deadline red-cooler)
      (date-deadline-subtle red-faint)
      (date-event fg-alt)
      (date-holiday magenta-warmer)
      (date-holiday-other blue)
      (date-now fg-main)
      (date-range fg-alt)
      (date-scheduled yellow-cooler)
      (date-scheduled-subtle yellow-faint)
      (date-weekday cyan)
      (date-weekend magenta)

;;;; Line number mappings

      (fg-line-number-inactive fg-dim)
      (fg-line-number-active fg-main)
      (bg-line-number-inactive bg-dim)
      (bg-line-number-active bg-active)

;;;; Link mappings

      (fg-link blue-warmer)
      (bg-link unspecified)
      (underline-link blue-warmer)

      (fg-link-symbolic cyan)
      (bg-link-symbolic unspecified)
      (underline-link-symbolic cyan)

      (fg-link-visited magenta)
      (bg-link-visited unspecified)
      (underline-link-visited magenta)

;;;; Mail mappings

      (mail-cite-0 blue-warmer)
      (mail-cite-1 yellow-cooler)
      (mail-cite-2 cyan-cooler)
      (mail-cite-3 red-cooler)
      (mail-part blue)
      (mail-recipient magenta-cooler)
      (mail-subject magenta-warmer)
      (mail-other magenta-faint)

;;;; Mark mappings

      (bg-mark-delete bg-red-subtle)
      (fg-mark-delete red-cooler)
      (bg-mark-select bg-cyan-subtle)
      (fg-mark-select cyan)
      (bg-mark-other bg-yellow-subtle)
      (fg-mark-other yellow)

;;;; Prompt mappings

      (fg-prompt cyan-cooler)
      (bg-prompt unspecified)

;;;; Prose mappings

      (bg-prose-block-delimiter bg-dim)
      (fg-prose-block-delimiter fg-dim)
      (bg-prose-block-contents bg-dim)

      (bg-prose-code unspecified)
      (fg-prose-code cyan-cooler)

      (bg-prose-macro unspecified)
      (fg-prose-macro magenta-cooler)

      (bg-prose-verbatim unspecified)
      (fg-prose-verbatim magenta-warmer)

      (prose-done green)
      (prose-todo red)

      (prose-metadata fg-dim)
      (prose-metadata-value fg-alt)

      (prose-table fg-alt)
      (prose-table-formula magenta-warmer)

      (prose-tag magenta-faint)

;;;; Rainbow mappings

      (rainbow-0 fg-main)
      (rainbow-1 magenta-intense)
      (rainbow-2 cyan-intense)
      (rainbow-3 red-warmer)
      (rainbow-4 yellow-intense)
      (rainbow-5 magenta-cooler)
      (rainbow-6 green-intense)
      (rainbow-7 blue-warmer)
      (rainbow-8 magenta-warmer)

;;;; Search mappings

      (bg-search-current bg-yellow-intense)
      (bg-search-lazy bg-cyan-intense)
      (bg-search-replace bg-red-intense)

      (bg-search-rx-group-0 bg-blue-intense)
      (bg-search-rx-group-1 bg-green-intense)
      (bg-search-rx-group-2 bg-red-subtle)
      (bg-search-rx-group-3 bg-magenta-subtle)

;;;; Space mappings

      (bg-space unspecified)
      (fg-space border)
      (bg-space-err bg-red-intense)

;;;; Terminal mappings

      (bg-term-black           "#000000")
      (fg-term-black           "#000000")
      (bg-term-black-bright    "#595959")
      (fg-term-black-bright    "#595959")

      (bg-term-red             red)
      (fg-term-red             red)
      (bg-term-red-bright      red-warmer)
      (fg-term-red-bright      red-warmer)

      (bg-term-green           green)
      (fg-term-green           green)
      (bg-term-green-bright    green-cooler)
      (fg-term-green-bright    green-cooler)

      (bg-term-yellow          yellow)
      (fg-term-yellow          yellow)
      (bg-term-yellow-bright   yellow-warmer)
      (fg-term-yellow-bright   yellow-warmer)

      (bg-term-blue            blue)
      (fg-term-blue            blue)
      (bg-term-blue-bright     blue-warmer)
      (fg-term-blue-bright     blue-warmer)

      (bg-term-magenta         magenta)
      (fg-term-magenta         magenta)
      (bg-term-magenta-bright  magenta-cooler)
      (fg-term-magenta-bright  magenta-cooler)

      (bg-term-cyan            cyan)
      (fg-term-cyan            cyan)
      (bg-term-cyan-bright     cyan-cooler)
      (fg-term-cyan-bright     cyan-cooler)

      (bg-term-white           "#a6a6a6")
      (fg-term-white           "#a6a6a6")
      (bg-term-white-bright    "#ffffff")
      (fg-term-white-bright    "#ffffff")

;;;; Heading mappings

      (fg-heading-0 cyan-cooler)
      (fg-heading-1 fg-main)
      (fg-heading-2 yellow-faint)
      (fg-heading-3 blue-faint)
      (fg-heading-4 magenta)
      (fg-heading-5 green-faint)
      (fg-heading-6 red-faint)
      (fg-heading-7 cyan-faint)
      (fg-heading-8 fg-dim)

      (bg-heading-0 unspecified)
      (bg-heading-1 unspecified)
      (bg-heading-2 unspecified)
      (bg-heading-3 unspecified)
      (bg-heading-4 unspecified)
      (bg-heading-5 unspecified)
      (bg-heading-6 unspecified)
      (bg-heading-7 unspecified)
      (bg-heading-8 unspecified)

      (overline-heading-0 unspecified)
      (overline-heading-1 unspecified)
      (overline-heading-2 unspecified)
      (overline-heading-3 unspecified)
      (overline-heading-4 unspecified)
      (overline-heading-5 unspecified)
      (overline-heading-6 unspecified)
      (overline-heading-7 unspecified)
      (overline-heading-8 unspecified))
    "The entire palette of the `bogus-vivendi' theme.

Named colors have the form (COLOR-NAME HEX-VALUE) with the former
as a symbol and the latter as a string.

Semantic color mappings have the form (MAPPING-NAME COLOR-NAME)
with both as symbols.  The latter is a named color that already
exists in the palette and is associated with a HEX-VALUE.")

  (defcustom bogus-vivendi-palette-user nil
    "Like the `bogus-vivendi--palette' for user-defined entries.
This is meant to extend the palette with custom named colors and/or
semantic palette mappings.  Those may then be used in combination with
palette overrides (also see `modus-themes-common-palette-overrides' and
`bogus-vivendi--palette-overrides')."
    :group 'modus-themes
    :package-version '(modus-themes . "4.5.0")
    :type '(repeat (list symbol (choice symbol string)))
    :set #'modus-themes--set-option
    :initialize #'custom-initialize-default
    :link '(info-link "(modus-themes) Option to extend the palette for use with overrides"))

  (defcustom bogus-vivendi-palette-overrides nil
    "Overrides for `bogus-vivendi-palette'.

Mirror the elements of the aforementioned palette, overriding
their value.

For overrides that are shared across all of the Modus themes,
refer to `modus-themes-common-palette-overrides'.

Theme-specific overrides take precedence over shared overrides.
The idea of common overrides is to change semantic color
mappings, such as to make the cursor red.  Wherea theme-specific
overrides can also be used to change the value of a named color,
such as what hexadecimal RGB value the red-warmer symbol
represents."
    :group 'modus-themes
    :package-version '(modus-themes . "4.0.0")
    :version "30.1"
    :type '(repeat (list symbol (choice symbol string)))
    :set #'modus-themes--set-option
    :initialize #'custom-initialize-default
    :link '(info-link "(modus-themes) Palette overrides"))

  (modus-themes-theme bogus-vivendi
                      bogus-vivendi-palette
                      bogus-vivendi-palette-overrides)

  (provide-theme 'bogus-vivendi))

;;; bogus-vivendi-theme.el ends here
