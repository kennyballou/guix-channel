(define-module (kbg packages coq-xyz)
  #:use-module (gnu packages autotools)
  #:use-module (gnu packages base)
  #:use-module (gnu packages bison)
  #:use-module (gnu packages boost)
  #:use-module (gnu packages coq)
  #:use-module (gnu packages emacs)
  #:use-module (gnu packages flex)
  #:use-module (gnu packages gawk)
  #:use-module (gnu packages multiprecision)
  #:use-module (gnu packages ocaml)
  #:use-module (gnu packages perl)
  #:use-module (gnu packages python)
  #:use-module (gnu packages rsync)
  #:use-module (gnu packages texinfo)
  #:use-module (gnu)
  #:use-module (guix build utils)
  #:use-module (guix build-system copy)
  #:use-module (guix build-system dune)
  #:use-module (guix build-system gnu)
  #:use-module (guix build-system ocaml)
  #:use-module (guix build-system)
  #:use-module (guix download)
  #:use-module (guix gexp)
  #:use-module (guix packages)
  #:use-module (guix utils)
  #:use-module (guix)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module ((srfi srfi-1) #:hide (zip))
  #:export (coq-math-classes coq-cpdtlib))

(define coq-math-classes
  (let ((baseurl "https://github.com/coq-community/math-classes/archive/refs/tags/")
        (version "8.19.0"))
    (package
     (name "coq-math-classes")
     (version version)
     (source (origin
              (method url-fetch)
              (uri (string-append baseurl version ".tar.gz"))
              (file-name (string-append "math-classes-" version ".tar.gz"))
              (sha256
               (base32
                "14j40cqv82sjg6wcfrrdakx321fb56156xdi7w904vlpxhfcyaq8"))))
     (build-system gnu-build-system)
     (native-inputs
      (list coq ocaml ocamlbuild ocaml-findlib))
     (inputs
      (list coq-bignums))
     (arguments
      `(#:tests? #f
                 #:make-flags (list (string-append "COQLIBINSTALL="
                                                   (assoc-ref %outputs "out")
                                                   "/lib/coq/user-contrib"))
                 #:phases
                 (modify-phases %standard-phases
                                (delete 'configure))))
     (home-page "https://math-classes.github.io/")
     (synopsis "A library of abstract interfaces for mathematical structures in Coq")
     (description "Math classes is a library of abstract interfaces for
mathematical structures.")
     (license license:expat))))

(define coq-cpdtlib
  (let ((baseurl "http://adam.chlipala.net/cpdt/")
        (version "2025-03-07"))
    (package
     (name "coq-cpdtlib")
     (version version)
     (source (origin
              (method url-fetch)
              (uri (string-append baseurl "cpdtlib.tgz"))
              (file-name "cpdtlib.tgz")
              (sha256
               (base32
                "1iymvmba2maiqiymz85la90gy91zgdqjhbhmdpb65nbdhs4qmwxj"))))
     (build-system copy-build-system)
     (native-inputs
      (list coq ocaml ocamlbuild ocaml-findlib))
     (arguments
      `(#:install-plan '(("CpdtTactics.v" "lib/coq/user-contrib/")
                         ("DepList.v" "lib/coq/user-contrib/")
                         ("MoreSpecif.v" "lib/coq/user-contrib/"))))
     (home-page baseurl)
     (synopsis "Some useful libraries from the CPDT book by Adam Chlipala")
     (description "Some useful libraries from and developed for the CPDT book by Adam Chlipala")
     (license license:bsd-3))))
