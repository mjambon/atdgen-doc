.PHONY: default clean

PAGES = \
  atd-syntax.html \
  atdgen.css \
  atdgen.html \
  biniou-format.txt \
  index.html \
  tutorial.html

default:
	$(MAKE) -C src
	mkdir -p docs
	cd html && cp $(PAGES) ../docs

clean:
	rm -f *~
	$(MAKE) -C src clean
