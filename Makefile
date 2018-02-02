OCB_FLAGS = -use-ocamlfind -tags thread
OCB =       ocamlbuild $(OCB_FLAGS)

MODULES = src \
MODULES = src \
					utils

INCLUDE_MODULES = $(foreach dir, $(MODULES), -I $(dir))

all: build
test: build-test run-test

build:
	ocamlc -i src/chalk.ml > src/chalk.mli

run-test:
	./test_chalk.native

build-test: build
	$(OCB) $(INCLUDE_MODULES) tests/test_chalk.native

clean:
	$(OCB) -clean

.PHONY: all run build build-test test try clean
