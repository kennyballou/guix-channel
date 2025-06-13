(define-module (kbg packages maths)
  #:use-module (gnu)
  #:use-module (gnu packages curl)
  #:use-module (gnu packages emacs)
  #:use-module (gnu packages lisp)
  #:use-module (gnu packages maths)
  #:use-module (gnu packages perl)
  #:use-module (gnu packages python)
  #:use-module (guix build utils)
  #:use-module (guix build-system gnu)
  #:use-module (guix build-system)
  #:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module (guix gexp)
  #:use-module (guix packages)
  #:use-module (guix utils)
  #:use-module (guix)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module ((srfi srfi-1) #:hide (zip))
  #:export (pvs))

(define pvs
  (let ((baseurl "https://github.com/SRI-CSL/PVS")
        (commit "71352a666424833682c812e3441833cbf6c0112a")
        (version "8.0")
        (revision "0"))
    (package
      (name "pvs")
      (version (git-version version revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url baseurl)
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32
           "0zgs6ih60lnljgzxqn2hi3s9cwllqbkcjwqp393qay4bdds7r8k6"))))
      (inputs
       (list cl-asdf curl emacs perl python-wrapper sbcl yices))
      (build-system gnu-build-system)
      (home-page "http://pvs.csl.sri.com/")
      (synopsis "The People's Verification System")
      (description "PVS is a mechanized environment for formal specification and
verification.  PVS consists of a specification language, a large number of
predefined theories, a type checker, an interactive theorem prover that
supports the use of several decision procedures and a symbolic model checker,
various utilities including a code generator and a random tester,
documentation, formalized libraries, and examples that illustrate different
methods of using the system in several application areas. By exploiting the
synergy between a highly expressive specification language and powerful
automated deduction, PVS serves as a productive environment for constructing
and maintaining large formalizations and proofs.")
      (license license:gpl2))))
