OUTS=Type Compo Import Data

build:

	cd examples; for i in $(OUTS)*hs; do runhaskell $$i > $$i.ou 2>&1 || true; done
	cd examples; for i in $(OUTS)*py; do python $$i > $$i.ou 2>&1 || true; done
	cd examples/missing-dep-pkg/src; runhaskell foo.hs > foo.hs.out
	cd examples; for i in *-pkg; do cd $$i; { set -x; cabal configure; cabal build; ./dist/build/foo/foo; } >../$$i.ou 2>&1; cd ..; done || true
	cd examples; { set -x; diff -burN missing-dep-pkg/*cabal missing-dep-fixed-pkg/*cabal; } > ./missing-dep-pkg.fix.diff || true
	python make.py
