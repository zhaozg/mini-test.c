all:	build/build.ninja
	ninja -C build

build/build.ninja:
	meson build

clean:
	rm -rf build

.PHONY: clean
