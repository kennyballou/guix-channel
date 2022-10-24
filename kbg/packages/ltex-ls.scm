(define-module (kbg packages ltex-ls)
  #:use-module (gnu)
  #:use-module (guix)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix build utils)
  #:use-module (guix build-system)
  #:use-module (guix build-system copy)
  #:use-module (guix download)
  #:use-module (guix gexp)
  #:use-module (guix packages)
  #:export (ltex-ls))

(define ltex-ls
  (let ((baseurl "https://github.com/valentjn/ltex-ls/releases/download/")
        (version "15.2.0"))
    (package
     (name "ltex-ls")
     (version version)
     (source (origin
              (method url-fetch)
              (uri (string-append baseurl version "/ltex-ls" version ".tar.gz"))
              (file-name (string-append "ltex-ls-" version ".tar.gz"))
              (sha256
               (base32
                "1cm3c1095v6dxw8jg1n3jwm9lp7sp5vkivhjwkfd4gqs6qbc426a"))))
     (build-system copy-build-system)
     (synopsis "LTeX Language Server")
     (description "LTeX LS implements a language server according to the Language Server
Protocol (LSP) and provides grammar and spelling errors in markup
documents, (LaTeX, Markdown, Org, ReStructuredText, etc.).  The documents are
checked with Language Tool.")
     (home-page "https://github.com/valentijn/ltex-ls/")
     (license license:mpl2.0))))
