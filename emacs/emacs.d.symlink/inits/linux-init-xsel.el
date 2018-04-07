(defun copy-from-gnu-linux ()
  (shell-command-to-string "xsel -b -o"))

(defun paste-to-gnu-linux (text &optional rest)
  (let ((process-connection-type nil))
    (let ((proc (start-process "xsel" "*Message*" "xsel" "-b" "-i")))
      (process-send-string proc text)
      (process-send-eof proc))))

(setq interprogram-cut-function 'paste-to-gnu-linux)
(setq interprogram-paste-function 'copy-from-gnu-linux)
