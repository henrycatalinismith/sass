bin:=$(shell yarn bin)
meta:=$(bin)/meta

$(meta):
	yarn
	
dart-sass/build/sass.dart.js:
	cd dart-sass && pub run grinder before-test

install: $(meta)
	@$(meta) git update
				
remotes: $(meta)
	@$(meta) git remote rename origin sass
	
.PHONY: \
	install \
	remotes \
	dart-sass/build/sass.dart.js
