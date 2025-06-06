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

(define-public emacs-org-teach
  (let ((baseurl "https://git.sr.ht/~jamesendreshowell/org-teach")
        (revision "0")
        (git-commit "e21b0099a071e4ed58566795a267b16ae44eddf6"))
    (package
     (name "emacs-org-teach")
     (version (git-version "0.0" revision git-commit))
     (source
      (origin
       (method git-fetch)
       (uri (git-reference
             (url baseurl)
             (commit git-commit)))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0xkbimmcvvkffn6ilb1l2f9s183yx3rr6hwpvvgx1xvwzir5vdqm"))))
     (build-system emacs-build-system)
     (home-page baseurl)
     (synopsis "Org macros and elisp functions for authoring course materials")
     (description "Org macros and elisp functions for authoring course materials")
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
        (commit "28d4a675ed8a186b4f3d2c3613e2eeb0d97f090c")
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
                  "1i4dznyln89vhdr085sqi19d7gd2zf2gsmdvbvcq7xxfpycg1dqv"))))
      (build-system emacs-build-system)
      (inputs (list emacs-compat))
      (synopsis "Flymake Vale Backend")
      (description "Flymake backend for Vale prose linter.")
      (home-page "https://github.com/tpeacock19/flymake-vale")
      (license license:gpl3))))

(define-public emacs-gc-stats
  (let ((baseurl "https://git.sr.ht/~yantar92/emacs-gc-stats/blob/")
        (filename "emacs-gc-stats.el")
        (commit "a9acd357aa49dd98bf95e767519efa4d7fb98537")
        (revision "0"))
    (package
      (name "emacs-gc-stats")
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
          (base32 "1v2a7p3jfg89wm8b854rvbn0b8cwncadbbdch4qmcgmhc6bc9d7s"))))
      (build-system emacs-build-system)
      (home-page "https://git.sr.ht/~yantar92/emacs-gc-stats")
      (synopsis "Collect Emacs garbage collection statistics")
      (description "This package collects Emacs garbage statistics over time and saves
it in the format that can be shared with Emacs maintainers.")
      (license license:gpl3))))

(define-public emacs-k-mode
  (let ((baseurl "https://raw.githubusercontent.com/runtimeverification/k-editor-support/")
        (filename "k-mode.el")
        (commit "e6354d00c0c9e8c40dfc9b93f7d945de4b73583e")
        (revision "0"))
    (package
      (name "emacs-k-mode")
      (version (git-version "0.0" revision commit))
      (source
       (origin
         (method url-fetch)
         (uri (string-append baseurl
                             commit
                             "/emacs/"
                             filename))
         (file-name filename)
         (sha256
          (base32 "00w7z3s81xsj2w905d0z87h9yipic6y8a744yprnkp177md75bdl"))))
      (build-system emacs-build-system)
      (home-page "https://kframework.org/editor_support/")
      (synopsis "Emacs mode for the K Framework")
      (description "K framework major mode for Emacs.")
      (license license:bsd-3))))

(define-public emacs-lean4-mode
  (let ((baseurl "https://github.com/leanprover/lean4-mode/")
        (git-commit "ac07247cdf546daab71d5a070477b2433e7cee01")
        (revision "0"))
    (package
      (name "emacs-lean4-mode")
      (version (git-version "0.0.0" revision git-commit))
      (source (origin
                (method git-fetch)
                (uri (git-reference
                      (url baseurl)
                      (commit git-commit)))
                (file-name (git-file-name name version))
                (sha256
                 (base32 "046wr7vs09xmb1bfdzkda93vm6m76p3n5pbbj34gc9bmd9yx4hc5"))))
      (inputs (list emacs-flycheck
                    emacs-lsp-mode
                    emacs-magit))
      (build-system emacs-build-system)
      (synopsis "Lean4 Emacs mode")
      (description "Lean4 Emacs mode for the interactive proof assistant Lean4")
      (home-page "https://github.com/leanprover/lean4-mode")
      (license license:asl2.0))))
