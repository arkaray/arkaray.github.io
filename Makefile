HTML=docs/index.html docs/there.html docs/sparse.html docs/gpd.html

.PHONY : all
all : $(HTML)

.PHONY : clean
clean:
	rm docs/index.jemdoc

%.html: %.jemdoc
	python3 ./jemdoc_mathjax/jemdoc -c docs/mysite.conf $^
