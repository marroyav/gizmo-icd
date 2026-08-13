# GIZMo Slow Controls ICD

This repository is the publication-safe review package for the DUNE Ground
Impedance Monitor (GIZMo) Slow Controls interface.

The current document is a dual-platform interface definition covering:

- GIZMo Kria, based on the AMD/Xilinx K26 SOM and KR260 carrier; and
- legacy GIZMo, based on the ZedBoard and the preserved controller runtime.

[Open the public-review ICD](gizmo_icd_public.pdf)

[Open the human-facing ground-reference monitoring guide](guides/ground-reference-monitoring/GIZMO_Ground_Reference_Impedance_Monitoring.pdf)

## Contents

- `gizmo_icd_public.tex` and `gizmo_icd_public.pdf`: source and generated ICD;
- `deliverables/GIZMo_Kria_DCS_Intake.xlsx`: Kria signal/control intake table;
- `deliverables/GIZMo_ZedBoard_DCS_Intake.xlsx`: legacy signal/control intake
  table;
- `guides/ground-reference-monitoring/`: source and generated PDF for the
  connection, power-up, and construction-monitoring guide;
- `cernatlasnote.cls` and `images/logosolo.png`: document build dependencies.

The signal attributes were reconciled against the maintained Kria interface,
retained Kria history, read-only observations from the connected legacy unit,
and recovered engineering material. Proposed values, commissioning
observations, unsupported behavior, and unresolved acceptance gates are
identified as such in the document and workbooks.

The legacy OPC UA server is an expected integration dependency and remains
subject to the legacy commissioning gates in the ICD. The Ignition project can
be prepared against the common namespace without treating that server as
accepted or deployed.

## Repository collection

- [`marroyav/GIZMo`](https://github.com/marroyav/GIZMo): Kria runtime and
  canonical OPC UA model;
- [`marroyav/gizmo-ignition`](https://github.com/marroyav/gizmo-ignition):
  dual-device Ignition resources and history tooling;
- [`marroyav/gizmo-zedboard-legacy`](https://github.com/marroyav/gizmo-zedboard-legacy):
  publication-safe legacy display firmware and hardware contract;
- [`marroyav/gizmo-data-archive`](https://github.com/marroyav/gizmo-data-archive):
  historian archive schema and verification tools;
- this repository: canonical public ICD, intake workbooks, and operator guide;
  and
- [`marroyav/sc_interface`](https://github.com/marroyav/sc_interface): the
  broader PDS Slow Controls interface with a snapshot of the GIZMo ICD package.

## Status and publication boundary

This is an uncontrolled public review copy. It is not an approved EDMS
revision and does not represent approval by GIZMo, DUNE Slow Controls,
Detector Protection, operations, or cybersecurity.

Site endpoints, credentials, access details, executable fingerprints,
controlled source workbooks, live databases, device images, and private
commissioning artifacts are intentionally excluded. Use the controlled review
workflow for commissioning and formal sign-off.

## Build

A TeX installation with `latexmk` is required.

```sh
make
```

The standalone package was extracted from the public package introduced in
`marroyav/sc_interface` commit `ea9b27d`.

No blanket license is asserted for the document, workbook, template, or image
content. The absence of a license means no reuse permission is granted beyond
rights provided by applicable law.
