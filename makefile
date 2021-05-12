bin:=$(shell yarn bin)
meta:=$(bin)/meta

$(meta):
	yarn

install: $(meta)
	@$(meta) git update
				
remotes: $(meta)
	@$(meta) git remote rename origin sass
