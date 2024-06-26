
compile:
	typst compile src/main.typ
	cp src/main.pdf ./main.pdf

watch:
	typst watch src/main.typ

clean:
	rm -f src/*/*.pdf
	rm -f src/*.pdf
