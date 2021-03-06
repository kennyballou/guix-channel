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

(define-public emacs-pulsar
  (let ((baseurl "https://gitlab.com/protesilaos/pulsar/-/raw/")
        (filename "pulsar.el")
        (commit "fca0e538155226bc34703a9d24adc15515bb9b80")
        (revision "0"))
    (package
     (name "emacs-pulsar")
     (version (git-version "0.0" revision commit))
     (source (origin
              (method url-fetch)
              (uri (string-append baseurl
                                  commit
                                  "/"
                                  filename))
              (file-name filename)
              (sha256
               (base32 "1zh80sl33czfp5bzg95nf7qqr4dkhi0ljngzcf7fp0qz83x5sbnf"))))
     (build-system emacs-build-system)
     (synopsis "Pulse line after running select functions")
     (description "This is a small package that temporarily highlights the
current line after a given function is invoked.  The affected functions are
defined in the user option `pulsar-pulse-functions'.  What Pulsar does is set
up an advice so that those functions run a hook after they are called.  The
pulse effect is added there (`pulsar-after-function-hook').")
     (home-page "https://protesilaos.com/emacs/pulsar")
     (license license:gpl3))))

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
