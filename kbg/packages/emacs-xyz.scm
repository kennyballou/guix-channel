(define-module (kbg packages emacs-xyz)
  #:use-module (gnu)
  #:use-module (guix)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix build utils)
  #:use-module (guix build-system)
  #:use-module (guix build-system emacs)
  #:use-module (guix build-system gnu)
  #:use-module (guix download)
  #:use-module (guix gexp)
  #:use-module (guix git-download)
  #:use-module (guix packages)
  #:use-module (gnu packages emacs)
  #:use-module (gnu packages emacs-xyz))

(define-public emacs-awqat
  (let ((baseurl "https://raw.githubusercontent.com/zkry/awqat/")
        (filename "awqat.el")
        (commit "608157d013debeb5dd7033b308571a012efab3af")
        (revision "0"))
    (package
     (name "emacs-awqat")
     (version (git-version "0.0" revision commit))
     (source (origin
              (method url-fetch)
              (uri (string-append
                    baseurl
                    commit
                    "/"
                    filename))
              (file-name filename)
              (sha256
               (base32
                "1jqklk504i925as23sv2l3gkq2hi7lzdvi8piblxsms3r25i89w3"))))
     (build-system emacs-build-system)
     ;; (inputs (list emacs))
     (synopsis "Awqat is a package to calculate the 5 daily Islamic prayer times in Emacs.")
     (description "This package provides the `awqat-times-for-day'
command which displays the Islamic prayer times for the current day
based on the configured latitude and longitude.  You should set the
values of the `calendar-latitude' and `calendar-longitude' for the
calculations to work properly.  Refer to the documentation for how to
tweak the calculations of the prayer times.")
     (home-page "https://github.com/zkry/awqat")
     (license license:gpl3))))

(define-public emacs-bibtex-to-plain-text
  (let ((baseurl "https://raw.githubusercontent.com/kennyballou/bibtex-to-plain-text.el/")
        (filename "bibtex-to-plain-text.el")
        (commit "2ee7f3df6415ef0c69670584a858fa1e03bb8c64")
        (revision "0"))
    (package
      (name "emacs-bibtex-to-plain-text")
      (version (git-version "0.0" revision commit))
      (source (origin
                (method url-fetch)
                (uri (string-append
                      baseurl
                      commit
                      "/"
                      filename))
                (file-name filename)
                (sha256
                 (base32
                  "0v1sis6ylhd926g0ycd6yz1xvvjlmgx8c099hc5v64fbaw175gbh"))))
      (build-system emacs-build-system)
      (synopsis "Tools for quickly creating plain text bibliographic references from BibTeX entries.")
      (description "The initial purpose of this package was to enable easy
conversion from BibTeX/LaTeX citations into a plain text format that can be
easily pasted into other programs that are unfriendly to LaTeX (or for quickly
sharing references with colleagues or friends through email, etc.).")
      (home-page "https://github.com/kennyballou/bibtex-to-plain-text.el")
      (license license:gpl2))))

(define-public emacs-elgantt
  (let ((baseurl "https://github.com/legalnonsense/elgantt")
        (revision "0")
        (git-commit "1a3d4fbc088997ad925ea3e2b88d77ec19f9156b"))
    (package
     (name "emacs-elgantt")
     (version (git-version "0.0" revision git-commit))
     (source
      (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/legalnonsense/elgantt")
             (commit git-commit)))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1jb8d9iw4xdv2ch10kgk6zyfki8sb40acbl9wii3hqrh9zahgiaw"))))
     (inputs
      (list emacs-dash
            emacs-org-ql
            emacs-s
            emacs-ts))
     (build-system emacs-build-system)
     (home-page "https://github.com/legalnonsense/elgantt")
     (synopsis "A Gantt chart/calendar for Orgmode")
     (description "El Gantt creates a Gantt calendar from your orgmode files. It provides a flexible customization system with the goal of being adaptable to ?multiple purposes. You can move dates, scroll forward and backward, jump to the underlying org file, and customize the display.")
     (license license:gpl3))))

(define-public emacs-org-dblock-gantt
  (let ((baseurl "https://git.sr.ht/~kennyballou/org-dblock-gantt.git/blob/")
        (filename "org-dblock-gantt.el")
        (commit "6b3869b2a9647697b48d03660a46144ea6d2fca5")
        (revision "0"))
    (package
      (name "emacs-org-dblock-gantt")
      (version (git-version "0.0" revision commit))
      (source
       (origin
         (method url-fetch)
         (uri (string-append baseurl
                             commit
                             "/"
                             filename))
         (file-name filename)
         (sha256
          (base32 "0b934ghbrx4himkyymgkm16sh0z9iwj3ib0qx0w0a0wxm9b4yl06"))))
      (build-system emacs-build-system)
      (home-page "https://git.sr.ht/~kennyballou/org-dblock-gantt.git")
      (synopsis "Simple function to create pgfGantt charts from Org entries.")
      (description "Simple function to create pgfGantt charts from Org entries.
Updates a dynamic block in the subtree of question.  The function outputs
commands which can be parsed by LaTeX exports of the document to generate a
Gantt chart of the subtree of TODO items.")
      (license license:gpl3))))

(define-public emacs-eglot-ltex
  (let ((baseurl "https://raw.githubusercontent.com/emacs-languagetool/eglot-ltex/")
        (filename "eglot-ltex.el")
        (commit "5f3bc55d472cd3e61606fccf66f176dac5bd8f82")
        (revision "0"))
    (package
     (name "emacs-eglot-ltex")
     (version (git-version "0.0" revision commit))
     (source (origin
              (method url-fetch)
              (uri (string-append
                    baseurl
                    commit
                    "/"
                    filename))
              (file-name filename)
              (sha256
               (base32
                "01m8mkkzfdmyk9d7m2x3avya34hbrd74c7g4shjw7rpharpgj7c5"))))
     (build-system emacs-build-system)
     (inputs (list emacs-f emacs-eglot))
     (synopsis "eglot client leverage LTEX Language Server")
     (description "An eglot LSP client which leverages the LTEX Language Server")
     (home-page "https://github.com/emacs-languagetool/eglot-ltex")
     (license license:gpl3))))

(define-public emacs-flymake-vale
  (let ((baseurl "https://raw.githubusercontent.com/tpeacock19/flymake-vale/")
        (filename "flymake-vale.el")
        (commit "914f30177dec0310d1ecab1fb798f2b70a018f24")
        (revision "0"))
    (package
     (name "emacs-flymake-vale")
     (version (git-version "0.0" revision commit))
     (source (origin
              (method url-fetch)
              (uri (string-append
                    baseurl
                    commit
                    "/"
                    filename))
              (file-name filename)
              (sha256
               (base32
                "1402kr6wmz59gyf27k58h7j0q76jhjmsqvich9ny1sk2s3af8wij"))))
     (build-system emacs-build-system)
     (synopsis "Flymake Vale Backend")
     (description "Flymake backend for Vale prose linter.")
     (home-page "https://github.com/tpeacock19/flymake-vale")
     (license license:gpl3))))
