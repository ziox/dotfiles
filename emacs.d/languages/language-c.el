(provide 'language-c)

(setq-default c-basic-offset 4)
(setq-default c-electric-flag nil)
(c-add-style "ziox"
             '("stroustrup"
               (c-offsets-alist
                (innamespace . 0))))
(setq c-default-style '((java-mode . "java")
                        (awk-mode . "awk")
                        (other . "ziox")))
