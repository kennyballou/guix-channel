(define-module (kbg packages gwl)
  #:use-module (gnu)
  #:use-module ((gnu packages package-management) #:prefix pm:)
  #:use-module (guix build utils)
  #:use-module (guix build-system gnu)
  #:use-module (guix build-system)
  #:use-module (guix download)
  #:use-module (guix gexp)
  #:use-module (guix packages)
  #:use-module (guix utils)
  #:use-module (guix)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module ((srfi srfi-1) #:hide (zip))
  #:export (gwl))

(define gwl
  (package
    (inherit pm:gwl)
    (version "0.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "https://git.savannah.gnu.org/cgit/gwl.git/snapshot/gwl-" version ".tar.gz"))
              (sha256
               (base32
                "0vg40xz8ng7p1iyp20a9n92baihscykdb6ih0k5x07m3hmd7hkhs"))))))
