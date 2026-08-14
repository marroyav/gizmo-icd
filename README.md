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

The Kria implementation and its generated model-1.3.1 schema are the
authoritative GIZMo--Slow Controls OPC UA contract. The ZedBoard server is a
separate conforming implementation in development: it keeps the canonical
NodeIds, datatypes, units, ranges, and meanings while reporting unsupported
capabilities explicitly. Slow Controls connects to the two endpoints
independently; neither server proxies or controls the other.

`HIGH Z` is a valid good-quality range state. The contract publishes
`ResistanceRange=OutOfRange` with a non-numeric resistance and `Good` status;
it never substitutes 500 or 999 ohm as a measured value.

The signal attributes were reconciled against the maintained Kria interface,
retained Kria history, observations and bounded control acceptance from the
connected legacy unit, and recovered engineering material. Proposed values,
commissioning observations, unsupported behavior, and unresolved acceptance
gates are identified as such in the document and workbooks.

The native legacy OPC UA server is under development for the ZedBoard and
remains subject to the commissioning gates in the ICD. A target-side
development build exercised the bounded threshold transaction, but that is not
production acceptance. The intended profile keeps anonymous access read-only
and permits only an authenticated 0--1023-ohm subset of the canonical threshold
write. The Ignition project can be prepared against the common namespace
without treating the open 100-cycle physical-display and site-security items
as complete.

## Repository collection

- [`marroyav/GIZMo`](https://github.com/marroyav/GIZMo): Kria runtime and
  authoritative, generated OPC UA contract;
- [`marroyav/gizmo-ignition`](https://github.com/marroyav/gizmo-ignition):
  dual-device Ignition resources and history tooling;
- [`marroyav/gizmo-zedboard-legacy`](https://github.com/marroyav/gizmo-zedboard-legacy):
  publication-safe legacy display firmware, contract snapshot, and ZedBoard
  conformance profile;
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
