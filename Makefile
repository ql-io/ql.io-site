all: clean install test

clean:
	-rm -fr node_modules

install:
	npm install;\

.PHONY : test
test: install

