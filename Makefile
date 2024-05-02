HTML=docs/index.html docs/there.html docs/sparse.html docs/gpd.html docs/masters.html docs/locolor.html

.PHONY : all
all : $(HTML)

.PHONY : clean
clean:
	rm $(HTML)

%.html: %.jemdoc
	python3 ./jemdoc_mathjax/jemdoc -c docs/mysite.conf $^
