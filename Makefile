
test: write-include-tests
	for f in tests/*.scad; do \
		docker run -v ${PWD}:/utils openscad/openscad:latest \
		openscad -o _.stl /utils/$$f || exit 1; \
	done

write-include-tests:
	mkdir -p tests
	for f in *.scad; do \
		echo "include <../$$f>; cube();" > tests/test-include-$$f; \
	done

clean:
	rm -rf tests
