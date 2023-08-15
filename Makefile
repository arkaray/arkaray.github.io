.PHONY : all
all : docs/index.html

docs/index.html : docs/index.jemdoc
	python3 ./jemdoc_mathjax/jemdoc $^
