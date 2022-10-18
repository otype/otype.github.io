.PHONY: build clean deploy run setup

all: build;

build: clean
	hugo -D -d docs

clean:
	rm -rf public
	rm -rf docs
	rm -f *~1~

deploy: clean
	git checkout public && make build && git rebase main && git push && git checkout main && scp -r docs/* cressida.uberspace.de:sites/otype.de/

release:
	echo 'Run `gh release create v<tag_version> --generate-notes`'
run:
	hugo server

setup:
	git clone https://github.com/shenoybr/hugo-goa themes/hugo-goa
