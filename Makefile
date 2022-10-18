.PHONY: build clean deploy run setup

all: build;

build: clean
	hugo -D -d docs

clean:
	rm -rf public
	rm -rf docs
	rm -f *~1~

deploy:
	scp -r docs/* cressida.uberspace.de:sites/otype.de/

run:
	hugo server

setup:
	git clone https://github.com/shenoybr/hugo-goa themes/hugo-goa
