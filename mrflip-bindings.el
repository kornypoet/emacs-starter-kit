;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;   Set keys
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; The new user-option `normal-erase-is-backspace' can be set to
;; determine the effect of the Delete and Backspace function keys.
;;
;; On window systems, the default value of this option is chosen
;; according to the keyboard used.  If the keyboard has both a
;; Backspace key and a Delete key, and both are mapped to their usual
;; meanings, the option's default value is set to t, so that Backspace
;; can be used to delete backward, and Delete can be used to delete
;; forward.  On keyboards which either have only one key (usually
;; labeled DEL), or two keys DEL and BS which produce the same effect,
;; the option's value is set to nil, and these keys delete backward.
;;
;; If not running under a window system, setting this option
;; accomplishes a similar effect by mapping C-h, which is usually
;; generated by the Backspace key, to DEL, and by mapping DEL to C-d
;; via `keyboard-translate'.  The former functionality of C-h is
;; available on the F1 key.  You should probably not use this setting
;; on a text-only terminal if you don't have both Backspace, Delete
;; and F1 keys.
;;
;; (normal-erase-is-backspace-mode)
;; (global-set-key	  [delete]	    'delete-char)
;; ;(global-set-key   [backspace]	     'backward-delete-char)


(global-set-key	 [C-delete]             'kill-word)
(global-set-key	 [C-backspace]          'backward-kill-word)
(global-set-key	 (kbd "C-s-.")          'overwrite-mode)
(global-set-key  (kbd "C-c w")          'delete-trailing-whitespace)   ;; http://bsdaemon.blogspot.com/2006/01/handling-eol-whitespace-in-emacs.html
(global-set-key	 (kbd "C-m")            'newline-and-indent)
(global-set-key	 [home]                 'beginning-of-line)
(global-set-key	 [M-left]               'beginning-of-line)
(global-set-key	 [end]                  'end-of-line)
(global-set-key	 [M-right]              'end-of-line)
(global-set-key	 [C-left]               'backward-word)
(global-set-key	 [s-left]               'backward-word)
(global-set-key	 [C-kp-left]            'backward-word)
(global-set-key	 [s-kp-left]            'backward-word)
(global-set-key	 [C-kp-4]               'backward-word)
(global-set-key	 [s-kp-4]               'backward-word)
(global-set-key  (kbd "\e[1;5D")        'backward-word)
(global-set-key	 [C-right]              'forward-word)
(global-set-key	 [s-right]              'forward-word)
(global-set-key	 [C-kp-right]           'forward-word)
(global-set-key	 [s-kp-right]           'forward-word)
(global-set-key	 [C-kp-6]               'forward-word)
(global-set-key	 [s-kp-6]               'forward-word)
(global-set-key  (kbd "\e[1;5C")        'forward-word)
(global-set-key	 [s-up]                 'backward-paragraph)
(global-set-key	 [C-kp-up]              'backward-paragraph)
(global-set-key	 [s-kp-up]              'backward-paragraph)
(global-set-key	 [s-kp-8]               'backward-paragraph)
(global-set-key  (kbd "\e[1;5B")        'backward-paragraph)
(global-set-key	 [s-down]               'forward-paragraph)
(global-set-key	 [C-kp-down]            'forward-paragraph)
(global-set-key	 [s-kp-down]            'forward-paragraph)
(global-set-key	 [s-kp-2]               'forward-paragraph)
(global-set-key  (kbd "\e[1;5A")        'forward-paragraph)
(global-set-key	 [C-prior]              'beginning-of-buffer)
(global-set-key	 [C-kp-prior]           'beginning-of-buffer)
(global-set-key	 [C-kp-9]               'beginning-of-buffer)
(global-set-key	 [C-next]               'end-of-buffer)
(global-set-key	 [C-kp-next]            'end-of-buffer)
(global-set-key	 [C-kp-3]               'end-of-buffer)
(global-set-key  (kbd "M-s-<up>") 	'backward-up-list)
(global-set-key  (kbd "M-s-<down>") 	'down-list)
(global-set-key  (kbd "M-s-<left>") 	'backward-sexp)
(global-set-key  (kbd "M-s-<right>")  	'forward-sexp)
(global-set-key  (kbd "M-s-S-<left>")   'backward-list)
(global-set-key  (kbd "M-s-S-<right>")  'forward-list)
(global-set-key	 [S-delete]             'kill-region)
(global-set-key	 [C-insert]             'copy-region-as-kill)
(global-set-key	 [S-insert]             'yank)
(global-set-key	 [C-S-insert]           'yank-pop)
(global-set-key	 [C-Delete]             'kill-word)
(global-set-key	 (kbd "C-z")            'undo)
(global-set-key	 (kbd "C-v")            'yank)
(global-set-key	 (kbd "M-v")            'yank)
(global-set-key	 (kbd "M-c")            'copy-region-as-kill)
(global-set-key	 (kbd "M-C-c")          'capitalize-word)
(global-set-key  (kbd "C-l")            'font-lock-and-redraw)
(global-set-key	 (kbd "M-g")            'goto-line)
(global-set-key	 (kbd "M-r")            'query-replace-regexp)
(global-set-key	 (kbd "C-M-r")          'query-replace)

;; (global-unset-key (kbd "C-M-3")	    )
(global-set-key	 (kbd "C-M-3")          'comment-region)
(global-set-key	 (kbd "C-M-#")          'comment-region)
(global-set-key	 (kbd "C-s-3")          'uncomment-region)	;;; this is C-<option>-3
(global-set-key	 (kbd "C-s-#")          'uncomment-region)	;;; this is C-S-<option>-3
(global-set-key	 (kbd "M-m")            'set-mark-command)
(global-set-key	 (kbd "C-x C-u")        'undo)
(global-set-key	 (kbd "C-x C-i")        'insert-buffer)
(global-set-key	 (kbd "C-x f")          'find-file)	       ;Overrides C-x f as set-fill-column
(global-set-key	 (kbd "C-x C-r")        'insert-file)
(global-set-key	 [C-f9]                 'compile)
(global-set-key	 [C-find]               'compile)
(global-set-key	 (kbd "M-s")            'tags-search)
(global-set-key	 (kbd "C-x C-n")        'next-error)
(global-set-key	 [find]                 'next-error)
(global-set-key	 [f9]                   'next-error)
(global-set-key	 (kbd "<f4>")           'repeat-complex-command)
(global-set-key	 (kbd "<C-f4>")         'repeat)
(global-set-key	 (kbd "C-M-^")          'fixnewlines)
;; Fix the annoying accelerator issue on Mac
(global-set-key	 (kbd "C-M-x")          'execute-extended-command)
(global-set-key	 (kbd "C-M-q")          'fill-paragraph)
(global-set-key	 (kbd "C-M-,")          'tags-loop-continue)
(global-set-key	 (kbd "M-n")            'make-frame-command)
(global-set-key	 (kbd "M-z")            'undo)
;; make S-<key> do the delete equivalent of M-<key> for kills
(global-set-key  (kbd "s-w")            'delete-region)
(global-set-key  (kbd "s-k")            'delete-line)
(global-set-key  (kbd "s-d")            'delete-next-word)
(global-set-key  (kbd "C-x C-2")        'set-tab-width-4)
(global-set-key  (kbd "C-x C-4")        'set-tab-width-4)
(global-set-key  (kbd "C-x C-8")        'set-tab-width-8)
(global-set-key  (kbd "<S-tab>")        'unindent-line-or-region-rigidly)
(global-set-key  (kbd "<C-tab>")        'indent-line-or-region-rigidly)

(global-set-key  [C-f1]                 'customize-apropos)
(global-set-key  [f8]                   'kmacro-end-and-call-macro)
(global-set-key  [M-f8]                 'kmacro-end-and-call-macro)
(global-set-key  (kbd "<s-f8>")         'call-last-kbd-macro)
(global-set-key  (kbd "C->")            'nxml-finish-element)
(global-set-key  (kbd "C-/")            'nxml-complete)
(global-set-key  (kbd "C-x C-z")        'undo)
(global-set-key  (kbd "C-c C-s")        'Buffer-menu-sort-by-path)
(provide 'mrflip-bindings)
