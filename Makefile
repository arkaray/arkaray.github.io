.PHONY : all
all : index.html

index.html : index.jemdoc
	python3 ./jemdoc_mathjax/jemdoc $^
