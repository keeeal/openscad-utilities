SHELL:=/bin/bash -O globstar

test:
	for f in **/*.scad; do \
		echo -n "test: include <$$f>... "; \
		testfile=_tests/$$(dirname $$f)/include-$$(basename $$f)-test; \
		mkdir -p _tests/$$(dirname $$f); \
		echo "include </utils/$$f>; cube();" > $${testfile}; \
		docker run -v $$(pwd):/utils openscad/openscad:latest \
		openscad --hardwarnings --quiet -o _.stl /utils/$${testfile} || exit 1; \
		echo PASSED; \
	done

clean:
	rm -rf _tests
