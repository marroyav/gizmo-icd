TEX := gizmo_icd_public
LATEXMK ?= latexmk
GUIDE_DIR := guides/ground-reference-monitoring
GUIDE_PDF := $(GUIDE_DIR)/GIZMO_Ground_Reference_Impedance_Monitoring.pdf

.PHONY: all clean

all: $(TEX).pdf $(GUIDE_PDF)

$(TEX).pdf: $(TEX).tex cernatlasnote.cls images/logosolo.png
	$(LATEXMK) -pdf -interaction=nonstopmode -halt-on-error $(TEX).tex

$(GUIDE_PDF): $(GUIDE_DIR)/GIZMO_Ground_Reference_Impedance_Monitoring.tex
	$(MAKE) -C $(GUIDE_DIR)

clean:
	$(LATEXMK) -C $(TEX).tex
	$(MAKE) -C $(GUIDE_DIR) clean
