.PHONY: build clean deploy run setup

all: build;

build: clean
	hugo -D

clean:
	rm -rf public
	rm -rf docs
	rm -f *~1~

deploy: clean
	git push origin main

release:
	echo 'Run `gh release create v<tag_version> --generate-notes`'
run:
	hugo server

setup:
	git clone https://github.com/shenoybr/hugo-goa themes/hugo-goa
