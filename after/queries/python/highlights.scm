; extends

; ============================================
; SELF AND CLS DISTINCTION (priority 150 - highest to override hlargs/odp)
; ============================================

; self -> purple everywhere (including function params)
((identifier) @variable.builtin.self.python
  (#eq? @variable.builtin.self.python "self")
  (#set! priority 150))

; cls -> blue everywhere (for class methods)
((identifier) @variable.builtin.cls.python
  (#eq? @variable.builtin.cls.python "cls")
  (#set! priority 150))

; ============================================
; DUNDER METHODS
; ============================================

; Dunder/magic methods (__init__, __str__, __repr__, etc.) -> @function.method.dunder
; Match function definitions where the name starts and ends with double underscores
(function_definition
  name: (identifier) @function.method.dunder.python
  (#lua-match? @function.method.dunder.python "^__.*__$")
  (#set! priority 130))

; Also capture dunder method calls
(call
  function: (attribute
    attribute: (identifier) @function.method.call.dunder.python
    (#lua-match? @function.method.call.dunder.python "^__.*__$")
    (#set! priority 130)))

; ============================================
; IMPORT STATEMENT CAPTURES (priority 130 to override @odp at 126)
; ============================================

; Module path in "from X.Y.Z import ..." -> @module.path.python (fg color)
; Captures: django, db in "from django.db import ..."
(import_from_statement
  module_name: (dotted_name
    (identifier) @module.path.python (#set! priority 130)))

; Imported class names (PascalCase) -> @type.import.python (yellow)
; Captures: IntegrityError in "from django.db import IntegrityError"
(import_from_statement
  name: (dotted_name
    (identifier) @type.import.python
    (#lua-match? @type.import.python "^[A-Z]")
    (#set! priority 130)))

; Imported function names (snake_case/lowercase) -> @function.import.python (blue)
; Captures: upload_file_using_lambda in "from apps.files.utils import upload_file_using_lambda"
(import_from_statement
  name: (dotted_name
    (identifier) @function.import.python
    (#lua-match? @function.import.python "^[a-z_]")
    (#set! priority 130)))