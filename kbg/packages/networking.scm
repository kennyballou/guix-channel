(define-module (kbg packages networking)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module ((srfi srfi-1) #:hide (zip))
  #:use-module (gnu)
  #:use-module (gnu packages bash)
  #:use-module (guix build utils)
  #:use-module (guix build-system trivial)
  #:use-module (guix build-system)
  #:use-module (guix))

(define-public isup
  (package
    (name "isup")
    (version "0.0.1")
    (source #f)
    (build-system trivial-build-system)
    (arguments
     (list
      #:modules '((guix build utils))
      #:builder
      #~(begin
          (use-modules (guix build utils))
          (let ((bash #$(this-package-native-input "bash-minimal"))
                (bin (string-append #$output "/bin/")))
            (mkdir-p bin)
            (with-output-to-file (string-append bin "isup")
              (lambda _
                (format #t "#!~a/bin/sh
ping --count=1 2>&1 > /dev/null $@
echo $?" bash)))
            (chmod (string-append bin "isup") #o755)))))
    (native-inputs
     (list bash-minimal))
    (home-page "https://git.sr.ht/~kennyballou/guix-channel.git")
    (synopsis "Simple host reachability script")
    (description "Simple ICMP reachability check composable with @code{test}.")
    (license license:gpl3+)))
