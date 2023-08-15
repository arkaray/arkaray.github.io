.PHONY : all
all : docs/index.html

.PHONY : clean
clean:
	rm docs/index.jemdoc

docs/index.html : docs/index.jemdoc
	python3 ./jemdoc_mathjax/jemdoc $^
