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
    (version "71f5543d5a9c7f4b4a6400b704764927d97a511f")
    (source (origin
              (method url-fetch)
              (uri (string-append "https://git.savannah.gnu.org/cgit/gwl.git/snapshot/gwl-" version ".tar.gz"))
              (sha256
               (base32
                "1nz0qq5aph0a33qd70nqbm0jmc5m44jgdrf4lawhzyay8lz8xs5s"))))))
