all: build static html rss

build:
	mkdir build

clean: build
	rm -r build/*.html

dirs:
	-mkdir build/writing
	-mkdir build/resources
	-mkdir build/math

html:
	./generate-html.sh

rss:
	./generate-rss.sh

# Generates summary pages in HTML
writing:
	./generate-writing.sh

static: build
	-ln -s $(PWD)/static/* build/
