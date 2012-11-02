build:
	rake tags
	jekyll ../public

deploy:
	$(MAKE) build

setup:
	mkdir tags
	$(MAKE) build
