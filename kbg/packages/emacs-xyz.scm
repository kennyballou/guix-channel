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
  #:use-module ((gnu packages emacs-build) #:prefix emacs-build:)
  #:use-module ((gnu packages emacs-xyz) #:prefix emacs-xyz:))

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
      (inputs (list emacs-build:emacs-compat))
      (synopsis "Flymake Vale Backend")
      (description "Flymake backend for Vale prose linter.")
      (home-page "https://github.com/tpeacock19/flymake-vale")
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

(define-public emacs-autodisass-java-bytecode
  (package
    (name "emacs-autodisass-java-bytecode")
    (version "20230907.1729")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/gbalats/autodisass-java-bytecode.git")
               (commit
                 "02788145f5c70e9004c4eba5acffbb584fe7de37")))
        (sha256
          (base32
            "0bfbi8rgr5sq7mc4f6dhnbyxs2kwih619d1wxq3cngnclgjvmhdq"))))
    (build-system emacs-build-system)
    (inputs (list emacs-build:emacs-compat))
    (arguments
     (list #:tests? #f))
    (home-page "https://github.com/gbalats/autodisass-java-bytecode")
    (synopsis
      "Automatically disassemble Java bytecode")
    (description
      "Documentation at https://melpa.org/#/autodisass-java-bytecode")
    (license license:gpl3)))

(define-public emacs-bnf-mode
  (package
    (name "emacs-bnf-mode")
    (version "20240915.2118")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/sergeyklay/bnf-mode.git")
               (commit
                 "5304ab647e04916c5be4fdde41477ad429a89120")))
        (sha256
          (base32
            "0d2w2hbfzvqmln7jzq5j4i4365rvl1fbi3fx252ig1ivkcb4jk8c"))))
    (build-system emacs-build-system)
    (inputs (list emacs-build:emacs-compat))
    (arguments
     (list #:tests? #f))
    (home-page
      "https://github.com/sergeyklay/bnf-mode")
    (synopsis "Major mode for editing BNF grammars.")
    (description
      "Documentation at https://melpa.org/#/bnf-mode")
    (license license:gpl3)))

(define-public emacs-coverlay
  (package
    (name "emacs-coverlay")
    (version "20190414.940")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/twada/coverlay.el.git")
               (commit
                 "0beae208d0e7d746a94385428bd61aa5cd7ea828")))
        (sha256
          (base32
            "1qf1s0997n6bfx50bd0jln25p7z6y8pfibijnbqcg2011xmv5dqh"))))
    (build-system emacs-build-system)
    (inputs (list emacs-build:emacs-compat))
    (home-page
      "https://github.com/twada/coverlay.el")
    (synopsis "Test coverage overlays")
    (description
      "Documentation at https://melpa.org/#/coverlay")
    (license license:gpl3)))

(define-public emacs-define-word
  (package
    (name "emacs-define-word")
    (version "20220104.1848")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/abo-abo/define-word.git")
               (commit
                 "31a8c67405afa99d0e25e7c86a4ee7ef84a808fe")))
        (sha256
          (base32
            "0h3dasg81f1b08xvz38nyd887pdlv60kj8q50kk2aqlpkr8j0y18"))))
    (build-system emacs-build-system)
    (inputs (list emacs-build:emacs-compat))
    (home-page
      "https://github.com/abo-abo/define-word")
    (synopsis
      "display the definition of word at point.")
    (description
      "Documentation at https://melpa.org/#/define-word")
    (license license:gpl3)))

(define-public emacs-eshell-fringe-status
  (package
    (name "emacs-eshell-fringe-status")
    (version "20170117.2316")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/ryuslash/eshell-fringe-status.git")
               (commit
                 "adc6997c68e39c0d52a2af1b2fd5cf2057783797")))
        (sha256
          (base32
            "1cwn4cvjjd4l5kk7s6cxzafjmdv3s7k78i73fvscmsnpwx9p2wj0"))))
    (build-system emacs-build-system)
    (inputs (list emacs-build:emacs-compat))
    (home-page
      "http://projects.ryuslash.org/eshell-fringe-status/")
    (synopsis "Show last status in fringe")
    (description
      "Documentation at https://melpa.org/#/eshell-fringe-status")
    (license license:gpl3)))

(define-public emacs-helm-flymake
  (package
    (name "emacs-helm-flymake")
    (version "20240902.1133")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/emacs-helm/helm-flymake.git")
               (commit
                 "3df968f45b066bc284b0bcce718c8493104d3f3b")))
        (sha256
          (base32
            "1aiyp4jpc8y5xbfcm19g822gvbkm6rv4v28zvv5w656n5m82nfd7"))))
    (build-system emacs-build-system)
    (propagated-inputs (list emacs-xyz:emacs-helm))
    (home-page
      "https://github.com/emacs-helm/helm-flymake")
    (synopsis "helm sources for flymake")
    (description
      "Documentation at https://melpa.org/#/helm-flymake")
    (license license:gpl2)))

(define-public emacs-flycheck-aspell
  (package
    (name "emacs-flycheck-aspell")
    (version "20250118.2052")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/leotaku/flycheck-aspell.git")
               (commit
                 "f7046f140866dbec3b9bd77a30c3053d3ee988e5")))
        (sha256
          (base32
            "122vi80xgpv6aam0mfijygpza22l21jcpcbfysvb4d2sx2aszdsq"))))
    (build-system emacs-build-system)
    (propagated-inputs (list emacs-xyz:emacs-flycheck))
    (home-page
      "https://github.com/leotaku/flycheck-aspell")
    (synopsis "Aspell checker for flycheck")
    (description
      "Documentation at https://melpa.org/#/flycheck-aspell")
    (license license:gpl3)))

(define-public emacs-helm-recoll
  (package
    (name "emacs-helm-recoll")
    (version "20220920.1206")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/emacs-helm/helm-recoll.git")
               (commit
                 "c054047ecca360c3e02281d8d0c021f654e63f37")))
        (sha256
          (base32
            "0w501j1bm73ryxygkw68xd6d7xyyr2wgd2xh0mzvd5y8djyf70hr"))))
    (build-system emacs-build-system)
    (propagated-inputs (list emacs-xyz:emacs-helm))
    (home-page
      "https://github.com/emacs-helm/helm-recoll")
    (synopsis
      "helm interface for the recoll desktop search tool.")
    (description
      "Documentation at https://melpa.org/#/helm-recoll")
    (license license:gpl3)))

(define-public emacs-helm-sql-connect
  (package
    (name "emacs-helm-sql-connect")
    (version "20170319.1251")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/eric-hansen/helm-sql-connect.git")
               (commit
                 "5aead55b6f8636140945714d8c332b287ab9ef10")))
        (sha256
          (base32
            "037gri2r9y135av8gbgi9d8k90qs8jlax0bimzcbwdkyhibhzrcp"))))
    (build-system emacs-build-system)
    (propagated-inputs (list emacs-xyz:emacs-helm))
    (home-page
      "https://github.com/eric-hansen/helm-sql-connect")
    (synopsis
      "Choose a database to connect to via Helm.")
    (description
      "Documentation at https://melpa.org/#/helm-sql-connect")
    (license license:gpl3)))

(define-public emacs-helm-tramp
  (package
    (name "emacs-helm-tramp")
    (version "20230714.1053")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/masasam/emacs-helm-tramp.git")
               (commit
                 "6683eae65a106d5afd5575b2b05cdb5529ddc926")))
        (sha256
          (base32
            "1cg9hawb3c6c6h8yfnnf0jamhv82y9xdcqpca497k8b24rcfmmfq"))))
    (build-system emacs-build-system)
    (propagated-inputs (list emacs-xyz:emacs-helm))
    (home-page
      "https://github.com/masasam/emacs-helm-tramp")
    (synopsis
      "Tramp helm interface for ssh, docker, vagrant")
    (description
      "Documentation at https://melpa.org/#/helm-tramp")
    (license license:gpl3)))

(define-public emacs-helm-unicode
  (package
    (name "emacs-helm-unicode")
    (version "20180608.1407")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/bomgar/helm-unicode.git")
               (commit
                 "fbeb0c5e741a6f462520884b744d43a9acbe1d34")))
        (sha256
          (base32
            "1aqwjw0jky07swagxnaqcn28inckavvpnlrwj62fljglip87zrc2"))))
    (build-system emacs-build-system)
    (propagated-inputs (list emacs-xyz:emacs-helm))
    (home-page "unspecified")
    (synopsis "Helm command for unicode characters.")
    (description
      "Documentation at https://melpa.org/#/helm-unicode")
    (license license:gpl3)))

(define-public emacs-regex-tool
  (package
    (name "emacs-regex-tool")
    (version "20170104.1918")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/jwiegley/regex-tool.git")
               (commit
                 "0b4a0111143c88ef94bec56624cb2e00c1a054e6")))
        (sha256
          (base32
            "03qm8s7nqsj0pjnnb0p84gk7hvad4bywn3rhr3ibzj6hxqvppbqj"))))
    (build-system emacs-build-system)
    (home-page "http://www.newartisans.com/")
    (synopsis
      "A regular expression evaluation tool for programmers")
    (description
      "Documentation at https://melpa.org/#/regex-tool")
    (license license:gpl2+)))

(define-public emacs-slurm-mode
  (package
    (name "emacs-slurm-mode")
    (version "20210519.1109")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/ffevotte/slurm.el.git")
               (commit
                 "589826fbb07f625b23c322df1cc16377c4fe6f66")))
        (sha256
          (base32
            "12plxmslrpx4b2aqh66zdhrmf41a6n6iaqbvsx42dk04caxfjp7m"))))
    (build-system emacs-build-system)
    (inputs (list emacs-build:emacs-dash
                  emacs-build:emacs-s))
    (home-page
      "https://github.com/ffevotte/slurm.el")
    (synopsis
      "Interaction with the SLURM job scheduling system")
    (description
      "Documentation at https://melpa.org/#/slurm-mode")
    (license license:gpl2+)))

(define-public emacs-whole-line-or-region
  (package
    (name "emacs-whole-line-or-region")
    (version "20240630.804")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/purcell/whole-line-or-region.git")
               (commit
                 "f39fd03cf563ffdf57144a7586a5e845969fc641")))
        (sha256
          (base32
            "1l8xpfssvcfdm6q606h5sriais5i8a6j8s0i8gd6gjafby11s59y"))))
    (build-system emacs-build-system)
    (arguments
     (list #:tests? #f))
    (home-page
      "https://github.com/purcell/whole-line-or-region")
    (synopsis
      "Operate on current line if region undefined")
    (description
      "Documentation at https://melpa.org/#/whole-line-or-region")
    (license license:gpl3)))

(define-public emacs-z3-mode
  (package
    (name "emacs-z3-mode")
    (version "20211116.138")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/zv/z3-mode.git")
               (commit
                 "0356cbe1e1e2b780ba0ddb4aaa055fa246a67931")))
        (sha256
          (base32
            "0jlnxxzh9p7285m16w33l5529iglg5cihs6gqwnb6y34wpzwyar6"))))
    (build-system emacs-build-system)
    (propagated-inputs (list emacs-xyz:emacs-flycheck))
    (home-page "https://github.com/zv/z3-mode")
    (synopsis
      "A z3/SMTLIBv2 interactive development environment")
    (description
      "Documentation at https://melpa.org/#/z3-mode")
    (license license:gpl3)))

(define-public emacs-zeal-at-point
  (package
    (name "emacs-zeal-at-point")
    (version "20180131.2354")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/jinzhu/zeal-at-point.git")
               (commit
                 "0fc3263f44e95acd3e9d91057677621ce4d297ee")))
        (sha256
          (base32
            "0aq9w9pjyzdgf63hwffhph6k43vv3cxmffklrjkjj3hqv796k8yd"))))
    (build-system emacs-build-system)
    (home-page
      "https://github.com/jinzhu/zeal-at-point")
    (synopsis "Search the word at point with Zeal")
    (description
      "Documentation at https://melpa.org/#/zeal-at-point")
    (license license:expat)))
