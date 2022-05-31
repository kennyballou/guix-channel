(concatenate-manifests
 (list (specifications->manifest (list "help2man"))
       (package->development-manifest
        (specification->package "guix"))))

