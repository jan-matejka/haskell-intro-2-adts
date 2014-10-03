OUTS=Type

build:

	cd examples; for i in $(OUTS)*hs; do runhaskell $$i > $$i.ou 2>&1 || true; done
	cd examples; for i in $(OUTS)*py; do python $$i > $$i.ou 2>&1 || true; done
	python make.py
