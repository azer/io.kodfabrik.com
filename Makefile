all:
	jekyll

publish:
	cp -r _site/* ~/www/io.kodfabrik.com/public/.
