TEX := gizmo_icd_public
LATEXMK ?= latexmk
GUIDE_DIR := guides/ground-reference-monitoring
GUIDE_PDFS := $(GUIDE_DIR)/GIZMO_Ground_Reference_Impedance_Monitoring.pdf \
	$(GUIDE_DIR)/GIZMO_Ground_Reference_Impedance_Monitoring_Concise.pdf \
	$(GUIDE_DIR)/GIZMO_Ground_Reference_Impedance_Monitoring_Long.pdf

.PHONY: all clean

all: $(TEX).pdf $(GUIDE_PDFS)

$(TEX).pdf: $(TEX).tex cernatlasnote.cls images/logosolo.png
	$(LATEXMK) -pdf -interaction=nonstopmode -halt-on-error $(TEX).tex

$(GUIDE_DIR)/%.pdf: $(GUIDE_DIR)/%.tex
	$(MAKE) -C $(GUIDE_DIR) $(notdir $@)

clean:
	$(LATEXMK) -C $(TEX).tex
	$(MAKE) -C $(GUIDE_DIR) clean
