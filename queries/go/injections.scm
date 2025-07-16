((raw_string_literal) @html)
  (#match? @html "<[a-zA-Z]")
  (#set! injection.language "html")
  (#set! injection.combined)

; extends

;; Highlight HTML in raw string literals (backtick strings) that start with '<'
((raw_string_literal_content) @injection.content
  (#match? @injection.content "<[a-zA-Z]")
  (#set! injection.language "html")
  (#set! injection.combined))

;; Highlight HTML in interpreted string literals (double-quoted strings) that start with '<'
((interpreted_string_literal_content) @injection.content
  (#match? @injection.content "<[a-zA-Z]")
  (#set! injection.language "html")
  (#set! injection.combined))

