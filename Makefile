.PHONY: build clean release run setup

all: build;

build: clean
	hugo -D

clean:
	rm -rf public
	rm -rf docs
	rm -f *~1~

release:
	echo 'Run `gh release create v<tag_version> --generate-notes`'
run:
	hugo server

setup:
	git submodule update --init
