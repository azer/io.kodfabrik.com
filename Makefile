build:
	rake tags
	jekyll ../public

deploy:
	$(MAKE) build

setup:
	$(MAKE) build
