OCB_FLAGS = -use-ocamlfind -pkg core,batteries,ounit -tags thread
OCB =       ocamlbuild $(OCB_FLAGS)

MODULES = src \
					utils \
					src/transformers

INCLUDE_MODULES = $(foreach dir, $(MODULES), -I $(dir))

all: build try
test: build-test run-test

try:
	./main.native

build:
	$(OCB) $(INCLUDE_MODULES) src/main.native

run-test:
	./test_main.native

build-test:
	$(OCB) $(INCLUDE_MODULES) tests/test_main.native

clean:
	$(OCB) -clean

.PHONY: all run build build-test test try clean
