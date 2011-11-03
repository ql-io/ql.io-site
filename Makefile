all: clean install test

clean:
	-rm -fr node_modules

install:
	npm link ql.io-ecv;\
	npm link ql.io-compiler;\
	npm link ql.io-console;\
	npm link ql.io-mon;\
	npm link ql.io-app;\
	npm install;\
	npm link; \

.PHONY : test
test: install

