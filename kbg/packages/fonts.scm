(define-module (kbg packages fonts)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module ((srfi srfi-1) #:hide (zip))
  #:use-module (gnu)
  #:use-module (guix build utils)
  #:use-module (guix build-system font)
  #:use-module (guix build-system)
  #:use-module (guix download)
  #:use-module (guix gexp)
  #:use-module (guix packages)
  #:use-module (guix utils)
  #:use-module (guix))

(define (make-nerd-font name filename version hash)
  (let ((baseurl "https://github.com/ryanoasis/nerd-fonts/releases/download/"))
    (package
      (name (format #f "font-~a-nerd" name))
      (version version)
      (source
       (origin
         (method url-fetch)
         (uri (string-append baseurl "v" version "/" filename ".tar.xz"))
         (file-name (string-append filename ".tar.xz"))
         (sha256
          (base32 hash))))
      (build-system font-build-system)
      (synopsis "Iconic font aggregator, collection, & patcher. 3,600+ icons, 50+ patched fonts")
      (description "Nerd Fonts is a project that attempts to patch as many developer targeted
and/or used fonts as possible. The patch is to specifically add a high
number of additional glyphs from popular 'iconic fonts' such as Font
Awesome, Devicons, Octicons, and others.")
      (home-page "https://nerdfonts.com")
      (license license:expat))))

(define-public font-dejavu-nerd
  (make-nerd-font "dejavu" "DejaVuSansMono" "3.1.1" "1bxmylj3lg8w56maxp0z2zqfi4rwggabvcgkn6n4wzm2bm6l13dg"))

(define-public font-hack-nerd
  (make-nerd-font "hack" "Hack" "3.1.1" "05ls81d15lgscc163451da5wxyj3ckr06kiml5fa31nvzsr0r0hd"))
