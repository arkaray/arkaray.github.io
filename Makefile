HTML=docs/index.html docs/there.html docs/sparse.html docs/gpd.html docs/masters.html docs/locolor.html docs/simpleHDX.html docs/chernoff.html

.PHONY : all
all : $(HTML)

.PHONY : clean
clean:
	rm $(HTML)

%.html: %.jemdoc docs/mysite.conf
	python3 ./jemdoc_mathjax/jemdoc -c docs/mysite.conf $<
