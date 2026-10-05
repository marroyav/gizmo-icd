# GIZMO–SC/DPS Interface Control Document

This repository contains the publication-safe interface package for the DUNE
Ground Impedance Monitor (GIZMO), Slow Controls, and the Detector Protection
System (SC/DPS).

[Open the concise public-review ICD](gizmo_icd_public.pdf)

[Open the separate ground-reference monitoring operations guide](guides/ground-reference-monitoring/GIZMO_Ground_Reference_Impedance_Monitoring.pdf)

[Open the concise operations guide](guides/ground-reference-monitoring/GIZMO_Ground_Reference_Impedance_Monitoring_Concise.pdf)

The guides explain grounding safety, recurring FNAL isolation tests, and
actions for failed checks or missing measurements. The quick guide covers
shift actions; the extended guide adds connections, server checks, and
shutdown. LaTeX source and printable HTML are included.

## Interface summary

The ICD defines one hardware-neutral SC/DPS interface:

- one 1000BASE-T copper Ethernet connection per active GIZMO;
- an OPC UA server using OPC UA Binary over UA TCP;
- namespace `urn:fnal:gizmo`, resolved by URI at connection time; and
- released model 1.4.0 of the generated GIZMO OPC UA schema as the
  machine-readable contract, including the ground-impedance alarm delivered to
  SC/DPS.

The interface uses the Kria-based GIZMO. Each unit has its own endpoint and
device identity with the common namespace and NodeIds.

The ICD includes the rack and grounding safety context needed to interpret a
GIZMO report. It stops at delivery, display, alarm, and history in SC/DPS; it
does not define downstream notification, escalation, work control, or
protective response.

## Contents

- `gizmo_icd_public.tex` and `gizmo_icd_public.pdf`: concise ICD source and PDF;
- `deliverables/`: Kria DCS intake workbook;
- `guides/ground-reference-monitoring/`: separate connection, commissioning,
  and monitoring operations guide;
- `reviews/`: retained contract review records; and
- `cernatlasnote.cls` and `images/logosolo.png`: document build dependencies.

The authoritative generated contract is maintained with the
[`marroyav/GIZMo`](https://github.com/marroyav/GIZMo) runtime. The companion
repositories are:

- [`marroyav/gizmo-ignition`](https://github.com/marroyav/gizmo-ignition) for
  Ignition integration; and
- [`marroyav/gizmo-data-archive`](https://github.com/marroyav/gizmo-data-archive)
  for archive tooling.

## Status

This is an uncontrolled public review copy. It is not an approved EDMS
revision or an electrical work procedure. Site endpoints, credentials, private
keys, and controlled installation records are excluded.

## Build

A TeX installation with `latexmk` is required.

```sh
make
```

No blanket license is asserted for the document, workbook, template, or image
content. The absence of a license means no reuse permission is granted beyond
rights provided by applicable law.
