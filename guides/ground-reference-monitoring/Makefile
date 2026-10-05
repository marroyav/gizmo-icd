TEX := GIZMO_Ground_Reference_Impedance_Monitoring
CONCISE := GIZMO_Ground_Reference_Impedance_Monitoring_Concise
LONG := GIZMO_Ground_Reference_Impedance_Monitoring_Long
LATEXMK ?= latexmk

.PHONY: all clean

all: $(TEX).pdf $(CONCISE).pdf $(LONG).pdf

$(TEX).pdf: $(TEX).tex
	$(LATEXMK) -pdf -interaction=nonstopmode -halt-on-error $(TEX).tex

$(CONCISE).pdf: $(CONCISE).tex
	$(LATEXMK) -pdf -interaction=nonstopmode -halt-on-error $(CONCISE).tex

$(LONG).pdf: $(LONG).tex
	$(LATEXMK) -pdf -interaction=nonstopmode -halt-on-error $(LONG).tex

clean:
	$(LATEXMK) -C $(TEX).tex
	$(LATEXMK) -C $(CONCISE).tex
	$(LATEXMK) -C $(LONG).tex
