# Makefile
gen_spec:
	@bash scripts/generate_spec.sh

build_exe:
	@bash scripts/build_windows.sh
	@bash scripts/build_linux.sh

build_full: gen_spec build_exe

build_source:
    @bash scripts/build_source.sh