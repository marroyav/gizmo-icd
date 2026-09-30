TEX := GIZMO_Ground_Reference_Impedance_Monitoring
CONCISE := GIZMO_Ground_Reference_Impedance_Monitoring_Concise
LATEXMK ?= latexmk

.PHONY: all clean

all: $(TEX).pdf $(CONCISE).pdf

$(TEX).pdf: $(TEX).tex
	$(LATEXMK) -pdf -interaction=nonstopmode -halt-on-error $(TEX).tex

$(CONCISE).pdf: $(CONCISE).tex
	$(LATEXMK) -pdf -interaction=nonstopmode -halt-on-error $(CONCISE).tex

clean:
	$(LATEXMK) -C $(TEX).tex
	$(LATEXMK) -C $(CONCISE).tex
