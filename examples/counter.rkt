#lang racket
(require "../firrtl-ast.rkt")

(define ex-cnt
  (let*
    ([ CLOCK (clk) ] 
     [ cnt (reg 'data 0 'int CLOCK) ]
     [ cnt-plus-one (add cnt 1) ]
     [ write-cnt (connect cnt cnt-plus-one) ]
     [ out-wire (wire 'counter 'int) ]
     [ write-out (connect out-wire cnt) ]
     [ mod-out (output (list out-wire)) ]
     [ mod-in (input (list)) ]
     [ cnt-module (module mod-in mod-out (list write-out write-cnt))])
     cnt-module))

(pretty-print ex-cnt)
