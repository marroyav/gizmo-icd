TEX := gizmo_icd_public
LATEXMK ?= latexmk

.PHONY: all clean

all: $(TEX).pdf

$(TEX).pdf: $(TEX).tex cernatlasnote.cls images/logosolo.png
	$(LATEXMK) -pdf -interaction=nonstopmode -halt-on-error $(TEX).tex

clean:
	$(LATEXMK) -C $(TEX).tex
