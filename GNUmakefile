OUTS=Type Compo Import Data

build:

	cd examples; for i in $(OUTS)*hs; do runhaskell $$i > $$i.ou 2>&1 || true; done
	cd examples; for i in $(OUTS)*py; do python $$i > $$i.ou 2>&1 || true; done
	cd examples; for i in *-pkg; do cd $$i; { set -x; cabal configure; cabal build; } >../$$i.ou 2>&1; done || true
	python make.py
