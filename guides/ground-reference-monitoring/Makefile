TEX := GIZMO_Ground_Reference_Impedance_Monitoring
LATEXMK ?= latexmk

.PHONY: all clean

all: $(TEX).pdf

$(TEX).pdf: $(TEX).tex
	$(LATEXMK) -pdf -interaction=nonstopmode -halt-on-error $(TEX).tex

clean:
	$(LATEXMK) -C $(TEX).tex
