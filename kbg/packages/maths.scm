;;; GNU Guix --- Functional package management for GNU
;;; Copyright © 2022 Kenny Ballou <kb@devnulllabs.io>
;;; This file is *NOT* part of GNU Guix.
;;;
;;; GNU Guix is free software; you can redistribute it and/or modify it
;;; under the terms of the GNU General Public License as published by
;;; the Free Software Foundation; either version 3 of the License, or (at
;;; your option) any later version.
;;;
;;; GNU Guix is distributed in the hope that it will be useful, but
;;; WITHOUT ANY WARRANTY; without even the implied warranty of
;;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;; GNU General Public License for more details.
;;;
;;; You should have received a copy of the GNU General Public License
;;; along with GNU Guix.  If not, see <http://www.gnu.org/licenses/>.

(define-module (kbg packages maths)
  #:use-module (ice-9 regex)
  #:use-module (ice-9 match)
  #:use-module (gnu packages)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module (guix gexp)
  #:use-module (guix utils)
  #:use-module ((guix build utils) #:select (alist-replace))
  #:use-module (guix build-system cmake)
  #:use-module (guix build-system glib-or-gtk)
  #:use-module (guix build-system gnu)
  #:use-module (guix build-system meson)
  #:use-module (guix build-system ocaml)
  #:use-module (guix build-system perl)
  #:use-module (guix build-system python)
  #:use-module (guix build-system ruby)
  #:use-module (gnu packages algebra)
  #:use-module (gnu packages audio)
  #:use-module (gnu packages autotools)
  #:use-module (gnu packages base)
  #:use-module (gnu packages bash)
  #:use-module (gnu packages bison)
  #:use-module (gnu packages boost)
  #:use-module (gnu packages check)
  #:use-module (gnu packages cmake)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages coq)
  #:use-module (gnu packages curl)
  #:use-module (gnu packages cyrus-sasl)
  #:use-module (gnu packages datamash)
  #:use-module (gnu packages dbm)
  #:use-module (gnu packages documentation)
  #:use-module (gnu packages elf)
  #:use-module (gnu packages emacs)
  #:use-module (gnu packages file)
  #:use-module (gnu packages flex)
  #:use-module (gnu packages fltk)
  #:use-module (gnu packages fontutils)
  #:use-module (gnu packages gettext)
  #:use-module (gnu packages gcc)
  #:use-module (gnu packages gd)
  #:use-module (gnu packages ghostscript)
  #:use-module (gnu packages glib)
  #:use-module (gnu packages graphviz)
  #:use-module (gnu packages gtk)
  #:use-module (gnu packages icu4c)
  #:use-module (gnu packages image)
  #:use-module (gnu packages java)
  #:use-module (gnu packages less)
  #:use-module (gnu packages lisp)
  #:use-module (gnu packages linux)
  #:use-module (gnu packages llvm)
  #:use-module (gnu packages logging)
  #:use-module (gnu packages lua)
  #:use-module (gnu packages gnome)
  #:use-module (gnu packages guile)
  #:use-module (gnu packages xorg)
  #:use-module (gnu packages gl)
  #:use-module (gnu packages imagemagick)
  #:use-module (gnu packages m4)
  #:use-module (gnu packages mpi)
  #:use-module (gnu packages multiprecision)
  #:use-module (gnu packages ncurses)
  #:use-module (gnu packages netpbm)
  #:use-module (gnu packages ocaml)
  #:use-module (gnu packages onc-rpc)
  #:use-module (gnu packages parallel)
  #:use-module (gnu packages pcre)
  #:use-module (gnu packages popt)
  #:use-module (gnu packages perl)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages pulseaudio)
  #:use-module (gnu packages python)
  #:use-module (gnu packages python-web)
  #:use-module (gnu packages python-xyz)
  #:use-module (gnu packages qt)
  #:use-module (gnu packages readline)
  #:use-module (gnu packages ruby)
  #:use-module (gnu packages tbb)
  #:use-module (gnu packages scheme)
  #:use-module (gnu packages serialization)
  #:use-module (gnu packages shells)
  #:use-module (gnu packages sphinx)
  #:use-module (gnu packages swig)
  #:use-module (gnu packages tcl)
  #:use-module (gnu packages texinfo)
  #:use-module (gnu packages tex)
  #:use-module (gnu packages tls)
  #:use-module (gnu packages version-control)
  #:use-module (gnu packages wxwidgets)
  #:use-module (gnu packages xml)
  #:use-module (kbg packages)
  #:use-module (srfi srfi-1)
  #:use-module (srfi srfi-26))

(define-public cvc4
  (let ((version "1.8"))
    (package
      (name "cvc4")
      (version version)
      (source
       (origin
         (method url-fetch)
         (uri
          (string-append "https://github.com/CVC4/CVC4-archived/archive/refs/tags/"
                         version
                         ".tar.gz"))
         (sha256
          (base32
           "1xb7h4pf07wqrnbpl94v1cg8jvd82w0vm62kzikn79fcwkai1zc0")))
       (patches
        (list (local-file "./patches/minisat-fenv.patch"))))
      (build-system gnu-build-system)
      (arguments
       '(#:configure-flags '("--enable-language-bindings=c,c++,java"
                             "--enable-gpl"
                             "--with-cln"
                             "--with-readline"
                             "--with-boost"))
       )
      (native-build-inputs
       (list pkg-config
             cmake))
      (inputs
       (list antlr3
             boost
             cln
             git
             gmp
             libantlr3c
             openjdk
             python-toml
             python3
             readline
             swig))
      (synopsis "A high-performance theorem prover and SMT solver")
      (description "A high-performance theorem prover and SMT solver")
      (home-page "http://cvc4.cs.stanford.edu/web/")
      (license licenses:bsd-3))

;; (define-public cvc5
;;   (package
;;     (name "cvc5")
;;     (version "1.0")
;;     (source
;;      (origin
;;        (method url-fetch)
;;        (uri
;;         (string-append "https://github.com/cvc5/cvc5/archive/refs/tags/cvc5-1.0.0.tar.gz
