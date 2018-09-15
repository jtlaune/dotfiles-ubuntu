PHONY: default clean

# Modules
MODULES = vim

default: base

base:
	stow $(MODULES)

clean: clean-base

clean-base:
	stow -D $(MODULES)
