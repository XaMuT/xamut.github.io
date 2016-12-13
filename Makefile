.PHONY: run
run:
	docker run --rm -it -v $$PWD:/srv/xamut.github.io -p 4000:4000 blog

.SILENT:
