#lang racket

;Types
(struct wire (name type) #:transparent)
(struct bundle (wires) #:transparent)
(struct reg (name onreset type clk) #:transparent)
(struct mport (name data addr en clk) #:transparent)
(struct mem (name type size mports rlat wlat wrflag) #:transparent)
(struct input (vals) #:transparent)
(struct output (vals) #:transparent)

(struct module (input output body) #:transparent)
(struct circuit (top modules) #:transparent)

;Exprs
(struct and (left right) #:transparent)
(struct or  (left right) #:transparent)
(struct xor (left right) #:transparent)
(struct not (arg) #:transparent)

(struct bits (wire start end) #:transparent)
(struct concat (left right) #:transparent)
(struct mux (cond left right) #:transparent)

(struct eq (left right) #:transparent)
(struct lt (left right) #:transparent)
(struct rt (left right) #:transparent)

(struct access (bundle field) #:transparent)

(struct validif (cond wire) #:transparent)

;Stmts
(struct skip () #:transparent)
(struct invalid (name) #:transparent)
(struct connect (dest src) #:transparent)
(struct when (cond then else) #:transparent)
(struct inst (name module) #:transparent)


;Parser from FIRRTL S-EXPR to our AST
(define (parse input)
	
)